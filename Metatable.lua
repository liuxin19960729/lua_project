--[[
原表

原表可以改变table 的行为


防止其他对table 惊醒修改


semetadata(tab,{

__metatable="xxxx"
})


getmetatable(table) 返回原表对象


]] --




-- mytab=setmetatable({},{})

-- print(getmetatable(mytab))


--[[
__index

访问table 如果这个键没有值 lua 会访问到metadate 里面的 __index 键


]] --



-- tab=setmetatable({},{
--     __index=function (t, k)
--         print(table.concat(t,","))
--         return "haha"
--     end
-- })



-- print(tab["qq"])

-- tab["qq"]=0

-- print(tab["qq"])

-- tab["qq"]=nil --表示删除

-- print(tab["qq"])



--[[
__newindex

给表缺少索引赋值 会触发 __newindex 调用


]] --




-- mytab = setmetatable({}, {
--     __newindex = function(tab, k, v)
--         print("__newindex k:" .. k .. " v:" .. v)
--         rawset(tab,k,v) -- 绕过原表直接给tab 设置值
--     end,
--     __index = function(tab, k)
--         print("__index k:" .. k)
--         return rawget(tab,k) --绕过 __index 直接获取
--     end
-- })



-- mytab[1]="lx"
-- print(mytab[1])
-- print(#mytab)




--[[

——add 操作



]]--



-- tab=setmetatable({},{
--     __add=function (t1, t2)
--         for key, value in pairs(t2) do
--             rawset(t1,key,value)
--         end
--         return t1
--     end
-- })


-- tab[1]=1;
-- tab[2]=2;
-- tab[3]=3;


-- print(table.concat(tab,","))

-- tab2={100,200,300,400}

-- tab=tab+tab2;


-- print(table.concat(tab,","))


--[[

__unm 在表前面加 -



]]--

-- local t = {}

-- setmetatable(t, {
--     __unm = function(a)
--         print("__unm 被调用")
--         return -100
--     end
-- })

-- print(-t) -- 100


--[[


--call



]]--