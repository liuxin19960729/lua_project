
local math=require "math"

function max(a,b)
    return math.max(a,b)
end

print(max(1,33))


function func()
    return 1,2
end

-- 函数返回多个值
local a,b=func()

print(a)
print(b)



-- 多个参数
function max2(...)
    return math.max(...)
end

print(max2(1,2,3,4,5))


function pp(...)
    for index, value in ipairs({...}) do
        print(index)
        print(value)
    end
end


pp(100,300,"dd")