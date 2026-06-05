---@meta Core

---Indentifier is a universal key for almost all objects in the game.
---It should be in "namespace:path/to/object" structure, in lower case.
---It can have exactly one colon, [a - z] letters(Ascii letters), [0 - 9] numbers(Ascii digits), and slashes.
---Any other symbols like special symbols, dots or letters are not valid.
---@alias Identifier string

---Main game class
---@class Core
Core = {}

---Loads a new script using its identifier.
---@param identifier Identifier
function Core.load_script(identifier) end

---@class OrbitDefinition
---@field radius number Orbit radius
---@field parent Identifier Parent body Identifier
---@field period number Orbit period in minutes

---@class StarDefinition
---@field radius number Star radius in meters
---@field temperature number Star temperature in Kelvin

---Register Planet with specidied identifier and definition.
---@param identifier Identifier Planet identifier
---@param def_table StarDefinition
---@param override_object? boolean Override existing object, optional. Default is false(will throw an error)
function Core.register_star(identifier, def_table, override_object) end

---@class BiomeConditionDefinition
---@field name string Biome Id
---@field rules? BiomeCondition[] Conditions for biome to spawn

---@class BiomeGeneratorDefinition
---@field parameters? table<string,FloatFunction> Parameters for worldgen, optional
---@field biomes BiomeConditionDefinition[] Biomes to generate

---@class CloudsDefinition
---@field scale number Average clouds scale in meters, relative to clouds noise frequency
---@field height number Clouds layer height relative to the planet zero ground
---@field depth number Clouds layer depth(vertical height from bottom of the layer to top of the layer)
---@field coverage number Clouds coverage from 0.0 to 1.0
---@field linear_speed number Clouds linear speed at equator in m/s. Default is 0.0
---@field wind_bends_count? number Wind bends count, optional. Default is 0.0(no bends)
---@field wind_bends_strength? number Wind bends strength, optional. Default is 0.0
---@field cyclones_scale? number Cyclones scale, optional. Default is 0.0(no cyclones)
---@field cyclones_intensity? number Cyclones intensity, optional. Default is 0.0

---@class AtmosphereDefinition
---@field clouds? CloudsDefinition Atmosphere clouds definition, optional

---@class RingShape
---@field inner_radius number
---@field width number

---@class RingsDefinition
---@field bottom_color string Color close to the planet in RRGGBB format
---@field shapes RingShape[] Ring shapes
---@field top_color string Color far from the planet in RRGGBB format

---@class PlanetDefinition
---@field atmosphere? AtmosphereDefinition Atmospehre properties of the planet, optional
---@field biome_generator BiomeGeneratorDefinition Biome generator for the planet
---@field gravitational_acceleration number Planet gravity strength in meters/second^2, Earth have 9.8
---@field inclination? number Planet inclination in degrees, optional. Default is 0.0
---@field orbit OrbitDefinition Planet orbit definition
---@field radius number Planet radius in meters
---@field rings? RingsDefinition Rings properties of the planet, optional
---@field rotation_period number Planet rotation period(length of the full day+night cycle) in minutes

---Register Planet with specidied identifier and definition.
---@param identifier Identifier Planet identifier
---@param def_table PlanetDefinition
---@param override_object? boolean Override existing object, optional. Default is false(will throw an error)
function Core.register_planet(identifier, def_table, override_object) end

---Packs color values into string in RGBA format
---@param r integer Red color value, [0 - 255]
---@param g integer Green color value, [0 - 255]
---@param b integer Blue color value, [0 - 255]
---@param a? integer Alpha color value, [0 - 255], optional
---@return string
function Core.pack_color(r, g, b, a) end

---Creates new GameObject with specified Identifier
---@param planet_id Identifier Planet Identifier
---@param object_id Identifier GameObject Identifier
---@param position Vector3 GameObject position
---@param rotation? Vector3 GameObject rotation, optional
---@param scale? Vector3 GameObject scale, optional
function Core.create_game_object(planet_id, object_id, position, rotation, scale) end

---Creates new GameEntity with specified Identifier and return it
---@param planet_id Identifier Planet Identifier
---@param entity_id Identifier Entity Identifier
---@return GameEntity
function Core.create_game_entity(planet_id, entity_id) end

---Send message to chat
---@param message string
function Core.send_message(message) end

---Plays sound at specified position
---@param planet_id Identifier Planet identifier
---@param sound_id string Souund Identifier
---@param position Vector3 Sound position
---@param volume? number Sound linear volume, optional. Default is 1.0
---@param pitch? number Sound pitch scale, optional. Default is 1.0
function Core.play_sound(planet_id, sound_id, position, volume, pitch) end

---@class RandomSoundDefinition
---@field max_pitch? number Maximal sound pitch offset, optinal. Default is 1.0
---@field min_pitch? number Minimal sound pitch offset, optinal. Default is 1.0
---@field max_volume? number Maximal sound linear volume, optinal. Default is 1.0
---@field min_volume? number Minimal sound linear volume, optinal. Default is 1.0
---@field sound_id string Souund Identifier

---Plays random sound at specified position
---Example: default:good_sound -> default:good_sound_5
---@param planet_id Identifier Planet identifier
---@param sound_table RandomSoundDefinition[] Sound array
---@param position Vector3 Sound position
function Core.play_random_sound(planet_id, sound_table, position) end

---Create item entitity at specified position
---@param planet_id Identifier Spawn planet Identifier
---@param position Vector3 Spawn position
---@param item_id Identifier Item Identifier
---@param item_count? integer Item count, optional. Default is 1
---@param pickup_time? integer Time before item will be abled to pickup by player, in seconds, optional. Default is 0.0
function Core.create_item_entity(planet_id, position, item_id, item_count, pickup_time) end

---Get all players near specified position within the radius
---@param planet_id Identifier Planet identifier
---@param position Vector3
---@param radius number
---@return Player[]
function Core.get_players_in_radius(planet_id, position, radius) end

---Get all players near specified position within the radius
---@param planet_id Identifier Planet identifier
---@param position Vector3
---@param radius number
---@return GameObject[]
function Core.get_objects_in_radius(planet_id, position, radius) end

---Get all players near specified position within the radius
---@param planet_id Identifier Planet identifier
---@param position Vector3
---@param radius number
---@return GameEntity[]
function Core.get_entities_in_radius(planet_id, position, radius) end

---Cast a ray in a world during physics tick, calls a callback if there is a hit
---@param planet_id Identifier Planet identifier
---@param start_position Vector3
---@param end_position Vector3
---@param callback fun(position: Vector3, hit_object: GameObject)
function Core.game_object_raycast(planet_id, start_position, end_position, callback) end

---Creates damage decal on specified position facing on specified normal
---@param game_object GameObject Parent game object for decal to stay in place. Decal will dissapear together with the object or after 10 seconds.
---@param position Vector3 Decal position
---@param normal Vector3 Decal normal for proper orientation on surface
function Core.create_damage_decal(game_object, position, normal) end