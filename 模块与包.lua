--[[
Lua 的模块是由变量、函数等已知元素组成的 table

]] --


local mod = require "module"


mod.func3()
mod.func1()


--[[
加载机制


require 加载策略
 package.path 存放着全局的lua 文件搜索路径


 lua 启动后 LUA_PATH 的值来初始这个环境变量
  如果没有 则会使用编译的时候默认的路径初始化



  如果通过搜索路径找到了文件 通过 package.loadfile 来加载模 否则去找
  c程序库
   
  package.cpath 这里面存着C的路径 LUA_CPATH 

   搜索 .so or .dll 文件通过 package.loadlib 加载




C 包

loadlib(动态库的绝对路径, 动态库的初始化函数)

loadlib 范湖nil 表示加载动态库 or 初始化错误

]]--