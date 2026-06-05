const CLASSES = {};
const COMPARATOR = (a, b) => a[0].localeCompare(b[0]);

const REGEXP_FUNCTION = /function\s+([\w\.:]+)\s*\(/;
const REGEXP_FUNCTION_NAME = /[\.:]/;

// ---@field [public|protected|private] name[?] type [comment]
const REGEXP_FIELD = /^---@field\s+(?:(?:public|protected|private)\s+)?([\w\.]+)(\??)\s+([^\s]+)(.*)/;

async function loadText(path) {
	const response = await fetch(path);
	if (!response.ok) {
		throw new Error("Ошибка Загрузки: " + response.status);
	}
	const text = await response.text();
	return text;
}

/**
 * Collect all comments relative to the position
 * @param {string[]} lines 
 * @param {integer} index 
 * @param {string?} finalComment 
 */
function getComments(lines, index, finalComment) {
	let commentArray = [];
	for (let i = index - 1; i >= 0; i--) {
		if (!lines[i].startsWith("---")) break;
		if (lines[i].startsWith("---@param")) continue;
		if (lines[i].startsWith("---@return")) continue;
		commentArray.push(lines[i].substring(3, lines[i].length));
	}
	let comments = commentArray.reverse().join(" ").trim();
	if (comments.length > 0 && !comments.endsWith(".")) comments += ".";
	if (finalComment) comments += " " + finalComment.trim();
	if (comments.length > 0 && !comments.endsWith(".")) comments += ".";
	return comments;
}

/**
 * Get or create class table
 * @param {string} className 
 */
function getClass(className) {
	let currentClass = CLASSES[className];
	if (!currentClass) {
		currentClass = {
			comment: "",
			fields: {},
			luaFunctions: {}
		};
		CLASSES[className] = currentClass;
	}
	return currentClass;
}

function makeFunctionTable() {
	return {
		comment: "",
		params: [],
		returns: [],
		separator: "."
	};
}

/**
 * @param {string} text 
 */
function parseText(text) {
	const lines = text.split("\n");

	let currentClass = null;
	let currentFunction = null;

	for (let i = 0; i < lines.length; i++) {
		const line = lines[i].trim();

		// Class search: ---@class Name [comment]
		const classMatch = line.match(/^---@class\s+([\w\.]+)(.*)/);
		if (classMatch) {
			const className = classMatch[1];
			currentClass = getClass(className);
			currentClass.comment = getComments(lines, i, classMatch[2].trim());
			continue;
		}

		if (!currentClass) continue;
		
		if (!line.startsWith("---")) {
			if (line.startsWith("function")) {
				if (!currentFunction) currentFunction = makeFunctionTable();

				let functionName = line.substring(9).trimStart();
				const separator = Math.max(functionName.indexOf(':'), functionName.indexOf('.'));
				const className = functionName.substring(0, separator);
				const separatorChar = functionName.charAt(separator);
				functionName = functionName.substring(separator + 1);
				//functionName = functionName.substring(0, functionName.indexOf('('));
				functionName = functionName.substring(0, functionName.indexOf(')') + 1);

				currentFunction.comment = getComments(lines, i);
				currentFunction.separator = separatorChar;
				getClass(className).luaFunctions[functionName] = currentFunction;

				currentFunction = null;
			}
			
			continue;
		}

		const fieldMatch = line.match(REGEXP_FIELD);
		if (fieldMatch) {
			const fieldName = fieldMatch[1];

			currentClass.fields[fieldName] = {
				optional: fieldMatch[2] === "?",
				type: fieldMatch[3],
				comment: fieldMatch[4].replace(", optional", "").trim()
			};

			continue;
		}

		if (line.includes("@param") || line.includes("@return")) {
			if (!currentFunction) currentFunction = makeFunctionTable();

			const paramMatch = line.match(/^---@param\s+([\w\.]+)\s+([^\s]+)(.*)/);
			if (paramMatch) {
				currentFunction.params.push({
					name: paramMatch[1],
					type: paramMatch[2],
					comment: paramMatch[3].trim()
				});
			}

			const returnMatch = line.match(/^---@return\s+([^\s]+)\s*(.*)/);
			if (returnMatch) {
				currentFunction.returns.push({
					type: returnMatch[1],
					comment: returnMatch[2].trim()
				});
			}
		}
	}
}

function formatTypes(types) {
	if (!types) return "";
	return types.split("|").map(t => {
		let name = t.trim();
		let result = `<span class="field_type">${name}</span>`;
		name = name.replace("[]", "").trim();
		if (CLASSES[name] !== undefined) {
			result = `<a href="#${name}">${result}</a>`;
		}
		return result;
	}).join(" or ");
}

function addClass([className, classData]) {
	const div = document.createElement("div");
	div.className = "class_block";
	document.body.append(div);

	div.innerHTML = `<h1 id="${className}">${className}</h1>`;
	if (classData.comment) {
		div.innerHTML += `<p class="class_comment">${classData.comment}</p>`;
	}

	let hasOptional = false;
	Object.values(classData.fields).forEach(v => hasOptional ||= v.optional);

	let rowIndex = 0;
	const fieldEntries = Object.entries(classData.fields);
	if (fieldEntries.length > 0) {
		div.innerHTML += `<h2>Fields</h2>`;
		const table = document.createElement("table");
		fieldEntries.sort(COMPARATOR).forEach(([name, data]) => {
			const row = table.insertRow();
			if ((++rowIndex) < fieldEntries.length) row.className = "bottom_line";
			row.innerHTML = `<td class="field_name">${name}</td>`;
			if (hasOptional) row.innerHTML += `<td>${data.optional ? "optional" : ""}</td>`;
			row.innerHTML += `
                <td>${formatTypes(data.type)}</td>
                <td>${data.comment}</td>
            `;
		});
		div.append(table);
	}

	rowIndex = 0;
	const functionEntries = Object.entries(classData.luaFunctions);
	if (functionEntries.length > 0) {
		if (fieldEntries.length > 0) div.innerHTML += "<br>";
		div.innerHTML += `<h2>Functions</h2>`;
		const table = document.createElement("table");
		functionEntries.sort(COMPARATOR).forEach(([name, data]) => {
			const row = table.insertRow();
			if ((++rowIndex) < functionEntries.length) row.className = "bottom_line";

			name = name.replace("(", '</span>(<span class="argument1">');
			name = name.replace(")", '</span>)');
			
			let count = 0;
			name = name.replaceAll(",", (match) => {
				return (count++ & 1) === 0 ? '</span>,<span class="argument2">' : '</span>,<span class="argument1">';
			});

			row.innerHTML = `
				<td><span class="class_name">${className}</span><span class="separator">${data.separator}</span><span class="field_name">${name}</td>
                <td>${formatTypes(data.type)}</td>
                <td>${data.comment}</td>
            `;
		});
		div.append(table);
	}
}

async function main() {
	const apis = [
		"api/biome_condition_api.lua",
		"api/biome_api.lua",
		"api/collisions_api.lua",
		"api/core_api.lua",
		"api/float_function_api.lua",
		"api/game_entity_api.lua",
		"api/game_model_api.lua",
		"api/game_object_api.lua",
		"api/item_api.lua",
		"api/math_api.lua",
		"api/player_api.lua",
		"api/registry_api.lua",
		"api/string_api.lua",
		"api/table_api.lua",
		"api/terrain_condition_api.lua",
		"api/terrain_material_api.lua",
		"api/time_api.lua",
		"api/tools_api.lua",
		"api/vector3_api.lua",
		"api/weighted_list.lua"
	];

	for (const api of apis) {
		const text = await loadText(api);
		parseText(text);
	}

	let classesEntries = Object.entries(CLASSES);
	classesEntries.sort(COMPARATOR);
	classesEntries.forEach(addClass);
}

main();