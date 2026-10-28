--[[
Lua 如何判断对象是否可以回收
核心概念:可达性



collectgarbage("collect")  做异常完整的垃圾回收循环

]]--



-- local t={
--     name="Lua"
-- }



-- collectgarbage("collect") --即使触发GC 也不会回收t 因为 下面有引用到t


-- print(t.name) 


-- do
--     local t = {
--         name = "Lua"
--     }
-- end

-- collectgarbage("collect") --do ...end 作用域后t 不在处于作用域也没有
-- -- 什么引用到t 所有 执行GC后可能被回收





-- a b互相引用 但是已经无法从外部访问所有仍然可能被回收

-- local a = {}
-- local b = {}

-- a.other = b
-- b.other = a

-- a = nil
-- b = nil

-- collectgarbage("collect") 



--[[
Lua GC 的基本工作原理
1.支持两种方式 
    1.1 增量式
    1.2 分代式



标记清除
1.从根对象,标记可达对象
2.清除没有被标记的对象
3.释放对象Lua 管理内存



2.增量式GC
把一次回收拆分为较小的步骤穿插在程序的运行功过程中
避免一次作为该步骤停顿太久

3.分代式GC
基本思想:创建的对象通常比长期存活的对象更加容器称为垃圾



]]--

-- local a = setmetatable({},{__gc=function (t)
--     print("gc")
-- end})
-- local b = {}local a = setmetatable({},{__gc=function (t)
--     print("gc")
-- end})
-- a.other = b
-- b.other = a

-- a = nil
-- b = nil

-- print(collectgarbage("count")) --KB 内存查看 单位KB

-- -- collectgarbage("collect") 

-- print(collectgarbage("count")) --KB 内存查看 单位KB


--[[
__gc 对象被当垃圾回收的时候会触发 __gc




__mode
   "k" k 弱引用
   "v" v 弱引用
   "kv" kv 都弱引用

]]--





wekMap=setmetatable({},{__mode="k"})


do
    local key="name"
    local value="lx"
    wekMap[key]=value

end


collectgarbage("collect")


print(next(wekMap))