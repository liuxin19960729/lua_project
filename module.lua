module={}

module.constant ="这是一个常量" --导出一个常量


function module.func1()
    io.write("公有函数")
end


-- 私有函数不能从外部访问模块里的这个私有函数
local function func2()
    print("私有函数")
end

function module.func3()
   func2() 
end

return module