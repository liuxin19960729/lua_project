--[[
存在三种变量
1.全局变量
2.局部变量
3.表中的域


变量的默认值 nil

]]--

a=5 --全局变量
local b=5 --局部变量



function c()
   c2=200; --全局变量
end


print(c2)

c()

print(c2)


d1,d2,d3=100,200 -- 不匹配 nil 补充

print(d2)
print(d3)

-- 索引

tab1={1,2,key=100}


print(tab1[1])
print(tab1.key1) -- 索引为字符穿可以使用  tab.i 来简写