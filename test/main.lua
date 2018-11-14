local kuku = require('kuku')

local t = kuku.createTable(1, 9)
local csv = kuku.ary2csv(t)

print(csv)
