# SmallPlanet2API
Lua API for SmallPlanet2 Game. API was made in Lua Language Server format (meta files) and can be used in Visual Studio Code or other editors that supports that format.


## How to use in Visual Studio Code

- Install **[Lua Language Server](https://marketplace.visualstudio.com/items?itemName=sumneko.lua)** extension
- Download **[api]("./api")** folder
- Create a new folder for mod and open it in VSC
- Create a folder `.vscode` in it
- Create `settings.json` file in `.vscode` folder
- Add this into `settings.json` with replacing path to downloaded api folder path:

```json
"Lua.workspace.library": ["/path/to/api"]
```