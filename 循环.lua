-- while


-- function p(i)
--     while i>=1  do
--         print("a")
--         i=i-1
--     end
-- end

-- p(2)


-- for

--[[

for var=exp1,exp1,exp3 do


end

exp 步长增长 可选 默认每次增加 1
]] --



-- for i=10,1,-1 do
--     print(i)
-- end

-- function c(x)
--     print("c call")
--     return x
-- end

-- for i=10,c(1),-1 do -- c 执行一次 后面 就使用这个结果
--     print(i)
-- end



-- tab1= {"one", "two", "three"}

-- for index, value in ipairs(tab1) do
--     print(index)
--     print(value)
-- end


-- repeat until(conditon)

-- a = 10
-- repeat
--     print(a)
--     a = a - 1;
-- until (a<=0) -- util 满足条件停止


--[[
break 跳出当前循环



:: Label ::  xxxx

goto Label 跳转到具体的位置
]]--