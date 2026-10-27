--[[
str..str 字符串连接



]]--


-- str1=[[

--    这是字符串块

-- ]]


-- print(#str1)
-- print(str1)

-- local myString = "Hello, RUNOOB!你好"

-- -- 计算字符串的长度（字符个数） byte 个数
-- local length = string.len(myString)

-- print(length)


-- -- utf8 字符个数
-- local length2= utf8.len(myString)
-- print(length2)



-- 全部转换为大写
print(string.upper("hello"))
-- 全部转为为小写
print(string.lower("WORLD"))

--      string.gsub(mainString,findString,replaceString,num)
-- mainString 字符串 把 findString 替换为 replaceString 替换num 次


print(string.gsub("abababgg","ba","BA",3))


local strr="hello lua"
print(strr:find("lua",1))


print(string.format("cc:%d",10))