--!strict
local Globals = require(script.Parent.Parent.Globals)

--[[
	Returns a new list with the reversed order of the given list
]]

local function reverse<V>(list: Globals.List<V>)
	local new = {}
	local len = #list
	local top = len + 1

	for i = 1, len do
		new[i] = list[top - i]
	end

	return new
end

return reverse
