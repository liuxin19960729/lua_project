--[[
table 可以创建 数组和和字典等不同的数据结构
note:不同使用nil 来做索引


]] --

-- mytab={}

-- mytab["key"]=100

-- mytab["key"]=nil --移除引用



-- fruits = {"banana","orange","apple","cherry"}

-- print(table.concat(fruits,",")) -- js join

-- print(table.concat(fruits,"+",2,4))



-- fruits = {"banana","orange","apple"}

-- table.insert(fruits,"cherry") --push
-- print(table.concat(fruits,","))

-- table.remove(fruits) --pop

-- print(table.concat(fruits,","))

-- table.insert(fruits,2,"pinus") --在某个位置指定插入一个元素

-- print(table.concat(fruits,","))



-- print(table.remove(fruits,2)) --指定删除某个位置的值 并范湖被删除元素的值

-- print(table.concat(fruits,","))




-- fruits = {"banana","orange","apple","grapes"}

-- print("排序前:"..table.concat(fruits,","))

-- table.sort(fruits)

-- print("排序后:"..table.concat(fruits,","))



-- function tab_max(tab)
--     local retV = nil

--     for _, v in ipairs(tab) do
--         if retV == nil then
--             retV = v
--         else
--             retV = math.max(retV, v)
--         end
--     end

--     return retV
-- end



-- tbl = {[1] = 2, [2] = 6, [3] = 34, [26] =5}
-- print("tbl 最大值：", tab_max(tbl))
-- print("tbl 长度 ", #tbl)