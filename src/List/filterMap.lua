--!strict
local Globals = require(script.Parent.Parent.Globals)

--[[
	Create a copy of a list doing a combination filter and map.

	If callback returns nil for any item, it is considered filtered from the
	list. Any other value is considered the result of the 'map' operation.
]]
local function filterMap<V>(list: Globals.List<V>, callback: (value: V, index: number) -> boolean)
	local new = {}
	local index = 1

	for i = 1, #list do
		local result = callback(list[i], i)

		if result ~= nil then
			new[index] = result
			index += 1
		end
	end

	return new
end

return filterMap
