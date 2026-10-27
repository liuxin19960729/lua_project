--[[
nil  条件中相当于 false
bool
number
string
function
userdata 存储在变量中的数据结构
thread 协程
table
]] --


print(type("hello"))
print(type(10.4 * 3))
print(type(print))
print(type(false))
print(type(nil))



tab1={key1="val1",key2="val2","val3"}


for k,v in pairs(tab1) do
    print("k:"..k.." v:"..v)
end

-- 设置成nil 相当于被删除
tab1.key1=nil
print("======================")
for k,v in pairs(tab1) do
    print("k:"..k.." v:"..v)
end

-- 类型判断比较
print(type(X)==type(nil))
print(type(nil)=="nil")

-- 条件

if 0 then
    print("0:true") -- 0 在条件判断中
else
    print("0:false")
end


html=[[
   表示一块字符串
   s
   s
]]

print(html)



-- 数字字符串进行计算是 lua 尝试将字符串的数字转换为数字

print("2"+6)
print("2"+"6")
print("3"*"3")

-- print("abc"*"3") -- 报错


-- .. 连接符号

print("a".."b")
print(100 .. 100) --100100


-- 字符串长度

str1=100 .. 100
print(#str1)
print(#"hello world")

-- table
tab1={} --创建一个空 table
tab2={"a","b","c"}


-- 从1 开始
for k,v in pairs(tab2) do
    print("k:"..k.." v:"..v)
end

tab3={}

for i = 1, 10, 1 do
    tab3[i]=i
end


tab3[200]=200
print(tab3[200])
print(tab3[100])
print(tab3[5])

-- function (函数)

function fb(n)
    if n<=1 then
        return 1
    else
        return n*fb(n-1)
    end
end


print(fb(5))
fb2=fb
print(fb2(5))


-- thread 
-- userdata