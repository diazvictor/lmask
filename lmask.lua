--[[--
 @package   lmask
 @filename  lmask.lua
 @version   1.0
 @author    Díaz Urbaneja Víctor Eduardo Diex <diazvictor@tutamail.com>
 @date      10.12.2023 15:45:05 -04
]]

local function str_split(str)
	local t={}
	str:gsub(".",function(c)table.insert(t,c)end)
	return t
end

-- @param mask placeholder
-- @param value data input
-- @return string
function lmask(mask, value)
	local data = {}

	local letters = {
		old = {},
		new = {}
	}
	local numbers = {
		old = {},
		new = {}
	}
	local chars = {}

	for i, v in pairs(str_split(mask)) do
		if string.match(v, 'A') then
			table.insert(letters.old, v)
		end

		if string.match(v, '#') then
			table.insert(numbers.old, v)
		end

		if string.match(v, '.*[()%-%/,].*') then
			table.insert(chars, {pos = i, val = v})
		end
	end

	for i, v in pairs(str_split(value)) do
		if string.match(v, '%a') then
			table.insert(letters.new, v)
		end

		if string.match(v, '%d') then
			table.insert(numbers.new, v)
		end
	end

	for i, v in pairs(letters.old) do
		table.insert(data, letters.new[i])
	end

	for i, v in pairs(numbers.old) do
		table.insert(data, numbers.new[i])
	end

	for i, v in pairs(chars) do
		table.insert(data, chars[i].pos, chars[i].val)
	end

	return table.concat(data)
end

return lmask
