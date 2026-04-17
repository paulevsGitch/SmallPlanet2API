---@meta

---@class FloatFunction
---@field type string

---@class EquatorGradientFloatFunction: FloatFunction
---@field type "equator_gradient"

---@class NoiseFloatFunction: FloatFunction
---@field type "noise"
---@field frequency? number Noise frequency, optional. Default is 1.0
---@field seed? integer Noise seed, optional. Default is 0
---@field fractal_octaves? integer Number of noise octaves, optional. Default is 1
---@field min_value? number Minimum noise value bound, optional. Default is -1.0
---@field max_value? number Maximum noise value bound, optional. Default is 1.0

---@class RandomFloatFunction: FloatFunction
---@field type "random"
---@field seed? integer Noise seed, optional. Default is 0
---@field min_value? number Minimum noise value bound, optional. Default is -1.0
---@field max_value? number Maximum noise value bound, optional. Default is 1.0

---@class PatchHeightmapFloatFunction: FloatFunction
---@field type "patch_heightmap"
---@field maps table Weighted list of images in format { id, weight }
---@field scale number Maps scale in meters
---@field seed? integer Map seed, optional. Default is 0
---@field min_value? number Minimum height value, optional. Default is 0.0
---@field max_value? number Maximum height value, optional. Default is 1.0
---@field sample_size? number Size of the sample relative to map, in [0.0-1.0] range. Default is 1.0

---@class AbsFloatFunction: FloatFunction
---@field type "abs"
---@field input FloatFunction Input float function

---@class SmoothStepFloatFunction: FloatFunction
---@field type "smooth_step"
---@field input FloatFunction Input float function
---@field min_value? number Minimum smooth step function bound, optional. Default is 0.0
---@field max_value? number Maximum smooth step function bound, optional. Default is 1.0

---@class MapRangeFloatFunction: FloatFunction
---@field type "map_range"
---@field input FloatFunction Input float function
---@field min_input_value? number Minimum input function value, optional. Default is 0.0
---@field max_input_value? number Maximum input function value, optional. Default is 1.0
---@field min_output_value? number Minimum result value, optional. Default is 0.0
---@field max_output_value? number Maximum result value, optional. Default is 1.0

---@class AddFloatFunction: FloatFunction
---@field type "add"
---@field input_a FloatFunction First input float function
---@field input_b FloatFunction Second input float function

---@class SubFloatFunction: FloatFunction
---@field type "sub"
---@field input_a FloatFunction First input float function
---@field input_b FloatFunction Second input float function

---@class MulFloatFunction: FloatFunction
---@field type "mul"
---@field input_a FloatFunction First input float function
---@field input_b FloatFunction Second input float function

---@class DivFloatFunction: FloatFunction
---@field type "div"
---@field input_a FloatFunction First input float function
---@field input_b FloatFunction Second input float function