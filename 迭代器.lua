--[[
迭代器
内部保存三个值:迭代函数,状态常量 控制变量


lua 提供
 ipairs 数组 和 连续的表  遇到 nil停止

  pairs 




  for 的基本结构
  for var ,var .... in iterator,state,control do{
  
  }
  
  iterator 迭代器
  state 状态数据
  control 控制变量用于记录当前遍历的位子

]]--

-- local function iterator(state, control)
--     control = control + 1 -- 下一个索引

--     if control <= #state then -- 下一个索引和值
--         return control, state[control]
--     end
-- end
-- -- 迭代器 返回 首个 非 nill 更新 control 
-- -- 迭代器 返回首个值为nill 循环结束


-- local tab = {10, 20, 30}

-- for k, v in iterator, tab, 0 do
--     print(k, v)
-- end


-- 迭代器打印 1-5


-- function _iter(state,ctr)
--     ctr=ctr+1
--     if ctr<=state then
--         return ctr
--     end
-- end

-- function iter(state)
--     return _iter,state,0
-- end


-- for i in iter(8)  do
--     print(i)
-- end


tab1={"a","b","c",k=200}

-- local k,v= next(tab1,nil)


-- print(k)
-- print(v)
-- k,v= next(tab1,k)

-- print(k)
-- print(v)
-- k,v= next(tab1,k)

-- print(k)
-- print(v)
-- k,v= next(tab1,k)

-- print(k)
-- print(v)



function pairs_1(tab)
    
    function iterator(tab,ctr)
        return next(tab,ctr)
    end


    return iterator,tab,nil
end


-- function ii_pairs_1(tab)
    
--     function iterator(tab,octr)
--         local ctr,v =next(tab,octr)
--         if not octr then
--             octr=0
--         end
--         if type(ctr) ~="number"  then
--              return
--         elseif  ctr-octr~=1 then
--             return
--         else
--             return ctr,v
--         end
--     end


--     return iterator,tab,nil
-- end


function ii_pairs_1(tab) 
    
    function iterator(tab,index)
        index=index+1
        value=tab[index]
        if not value then
            return 
        end

        return index,value -- 返回的值交给 in 前面
    end


    return iterator,tab,0 
end


tab1[100]=200

for index, value in ii_pairs_1(tab1) do
    print("i:"..index.." v"..value)
end

