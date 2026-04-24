---@meta Core

---Main game class
---@class Core
---@field registered_definitions table A table of different categories for registered object definitions
Core = {}

---@type GameObjectDef[] Table of tables with identifier as a key and definition table as a value
Core.registered_definitions.game_objects = {}

---@type ItemDef[] Table of tables with identifier as a key and definition table as a value
Core.registered_definitions.game_items = {}

---@type BiomeDef[] Table of tables with identifier as a key and definition table as a value
Core.registered_definitions.game_biomes = {}

---@type StarDef[] Table of tables with identifier as a key and definition table as a value
Core.registered_definitions.stars = {}

---@type PlanetDef[] Table of tables with identifier as a key and definition table as a value
Core.registered_definitions.planets = {}

---Loads a new script using its identifier.
---@param identifier string
Core.load_script = function (identifier) end

---@class MeshDef View range definition table
---@field name string Mesh name
---@field minimal_distance? number Minimal distance in meters for mesh to become visible, optional

---@class ItemDef
---@field mesh? string Item mesh, optional
---@field view_mode? "side"|"top" Icon view mode, optional. Default is "side"

---Register new Item with specidied identifier and definition.
---@param identifier string Item identifier
---@param def_table ItemDef
---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
Core.register_game_item = function (identifier, def_table, override_object) end

---@class BiomeDecorationDef
---@field object_id string Game object id
---@field distance? number Average distance between objects, optional. Default is 1.0
---@field scale? FloatFunction Scale of the object, optional. Default is 1.0
---@field orientation? "local_up"|"surface_normal"|"random" Decoaration orientation, optional. Default is "local_up"
---@field conditions? TerrainCondition[]

---@class BiomeDef
---@field terrain string|table Terrain Id or table with terrain rules
---@field height? number|FloatFunction Height value or function for terrain generation, optional
---@field far_decorations? BiomeDecorationDef[] Far decorations (big objects), optional
---@field near_decorations? BiomeDecorationDef[] Near decorations (small objects), optional
---@field ambient_sound? string Biome ambient sound loop, optional

---Register Biome with specidied identifier and definition.
---@param identifier string Biome identifier
---@param def_table BiomeDef
---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
Core.register_game_biome = function (identifier, def_table, override_object) end

---@class OrbitDef
---@field radius number Orbit radius
---@field parent string Parent body Identifier
---@field period number Orbit period in minutes

---@class StarDef
---@field radius number Star radius in meters
---@field temperature number Star temperature in Kelvin

---Register Planet with specidied identifier and definition.
---@param identifier string Planet identifier
---@param def_table StarDef
---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
Core.register_star = function (identifier, def_table, override_object) end

---@class BiomeConditionDef
---@field name string Biome Id
---@field rules? BiomeCondition[] Conditions for biome to spawn

---@class BiomeGeneratorDef
---@field parameters? table<string,FloatFunction> Parameters for worldgen, optional
---@field biomes BiomeConditionDef[] Biomes to generate

---@class CloudsDef
---@field scale number Average clouds scale in meters, relative to clouds noise frequency
---@field height number Clouds layer height relative to the planet zero ground
---@field depth number Clouds layer depth (vertical height from bottom of the layer to top of the layer)
---@field coverage number Clouds coverage from 0.0 to 1.0
---@field linear_speed number Clouds linear speed at equator in m/s. Default is 0.0
---@field wind_bends_count? number Wind bends count, optional. Default is 0.0 (no bends)
---@field wind_bends_strength? number Wind bends strength, optional. Default is 0.0
---@field cyclones_scale? number Cyclones scale, optional. Default is 0.0 (no cyclones)
---@field cyclones_intensity? number Cyclones intensity, optional. Default is 0.0

---@class AtmosphereDef
---@field clouds? CloudsDef Atmosphere clouds definition, optional

---@class RingShape
---@field inner_radius number
---@field width number

---@class RingsDef
---@field bottom_color string Color close to the planet in RRGGBB format
---@field top_color string Color far from the planet in RRGGBB format
---@field shapes RingShape[] Ring shapes

---@class PlanetDef
---@field radius number Planet radius in meters
---@field rotation_period number Planet rotation period (length of the full day+night cycle) in minutes
---@field gravitational_acceleration number Planet gravity strength in meters/second^2, Earth have 9.8
---@field orbit OrbitDef Planet orbit definition
---@field inclination? number Planet inclination in degrees, optional. Default is 0.0
---@field biome_generator BiomeGeneratorDef Biome generator for the planet
---@field atmosphere? AtmosphereDef Atmospehre properties of the planet, optional
---@field rings? RingsDef Rings properties of the planet, optional

---Register Planet with specidied identifier and definition.
---@param identifier string Planet identifier
---@param def_table PlanetDef
---@param override_object? boolean Override existing object, optional. Default is false (will throw an error)
Core.register_planet = function (identifier, def_table, override_object) end

---Packs color values into string in RGBA format
---@param r integer Red color value, [0 - 255]
---@param g integer Green color value, [0 - 255]
---@param b integer Blue color value, [0 - 255]
---@param a? integer Alpha color value, [0 - 255], optional
---@return string
Core.pack_color = function (r, g, b, a) end

---Creates new entity with specified Id
---@param identifier string Entity identifier
---@return GameEntity
Core.create_game_entity = function (identifier) end

---Send message to chat
---@param message string
Core.send_message = function (message) end

---Plays sound at specified position
---@param sound_id string Souund Identifier
---@param position Vector3 Sound position
---@param volume? number Sound volume offset, optional. Default is 0.0
---@param pitch? number Sound pitch scale, optional. Default is 1.0
Core.play_sound = function (sound_id, position, volume, pitch) end

---@class RandomSoundDef
---@field sound_id string Souund Identifier
---@field min_volume? number Minimal sound volume offset, optinal. Default is 0.0
---@field max_volume? number Maximal sound volume offset, optinal. Default is 0.0
---@field min_pitch? number Minimal sound pitch offset, optinal. Default is 1.0
---@field max_pitch? number Maximal sound pitch offset, optinal. Default is 1.0

---Plays random sound at specified position
---Example: default:good_sound -> default:good_sound_5
---@param sound_table RandomSoundDef[] Sound array
---@param position Vector3 Sound position
Core.play_random_sound = function (sound_table, position) end

---Creates item entitity at specified position
---@param position Vector3
---@param velocity Vector3
---@param item_id string
---@param item_count integer
Core.create_item_entity = function (position, velocity, item_id, item_count) end

---Get all players near specified position within the radius
---@param position Vector3
---@param radius number
---@return Player[]
Core.get_players_in_radius = function (position, radius) end