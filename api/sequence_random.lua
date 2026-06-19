---@meta

---Will generate numbers in [ 1 - count ] range.
---Useful for making not-repeatable random sequences.
---@class SequenceRandom
SequenceRandom = {}

---Constructs new sequence random for specified sequence size.
---@param count integer Sequence size
---@return SequenceRandom
function SequenceRandom.new(count) end

---Get next random integer value from sequence
---@return integer
function SequenceRandom:next() end