---
--- Generated by Luanalysis
--- Created by marcelo.
--- DateTime: 20/01/2021 17:15
---
local tablew = {
    nome = "Marcelo",
    sobreNome = {
        teste = "teste",
        teste2 = {
            value = "value2"
        }
    },
    idade = 20,
}
function split_header_name(value)
    --print(value)
    local world = {}
    local idx = 1
    for i in string.gmatch(value, "([^.]+)") do
        world[idx] = i
        idx = idx + 1
    end
    --print(world)
    return world
end

local header_names = { "payload.preferred.username" }
local size = #header_names
for line = 1, size do
    --kong.log.info("world")
    local world = split_header_name(header_names[line])
    for idx, line in ipairs(world) do
        print(line)
    end
    break;
end



















--Lib()
--print(funcao1(tablew, "nome"))
----
----
--function Lib()
--    function funcao1 (json, x) return json[x] end
--    function funcao2 (json, x, x1) return json[x][x1] end
--    function funcao3 (json, x, x1, x3) return json[x][x1][x3] end
--    function funcao4 (json, x, x1, x2, x3) return json[x][x1][x2][x3] end
--    return self
--end

--Lib()
--local c = { "sobreNome teste", "nome", "idade", "sobreNome teste2 value" }
--local size = #c
--function split_header_name(value)
--    local world = {}
--    local idx = 1
--    for  i in string.gmatch(value, "%S+") do
--        world[idx] = i
--        idx = idx +1
--    end
--    return world
--end

--function call_header_name(world)
--    local value
--    if 1 ==  #world then
--        local a = funcao1(tablew, world[1])
--        value = a
--    elseif 2 ==  #world then
--        local a = funcao2(tablew, world[1], world[2])
--        value = a
--    elseif 3 ==  #world then
--        local a = funcao3(tablew, world[1], world[2], world[3])
--        value = a
--    end
--    return value
--end

--function change_header_name(world)
--    local m = table.concat(world, " ")
--    return "x_" ..  string.gsub(m, " ", "_")
--end
--
--local header = {}
--for line = 1, size do
--    local world = split_header_name(c[line])
--    if 1 ==  #world then
--        local a = funcao1(tablew, world[1])
--        header[c[line]] = a
--    elseif 2 ==  #world then
--        local a = funcao2(tablew, world[1], world[2])
--        header[c[line]] = a
--    elseif 3 ==  #world then
--        local a = funcao3(tablew, world[1], world[2], world[3])
--        header[c[line]] = a
--    end
--
--end
--for idx, line in pairs(header) do
--    --change_header_name({idx})
--    print(change_header_name({idx}), '==', line)
--
--end

--local a = funcao(tablew, "nome")
--print(a)
--local b = funcao1(tablew, "sobreNome", "teste")
--print(b)
--
--local c = funcao2(tablew, "sobreNome", "teste2","value")
--print(c)


--f = assert (loadstring ("print 'hello, world'"))

--for idx, line in ipairs(c) do
--    print(line)
--end

--function make_func (x)
--    fx = dostring("return function sobreNome_teste2_value (json) return json.sobreNome.teste2.value end")
--    return x
--end

--function make_func (json)
--    fx = "return function(x) return json.sobreNome.teste2.value end"
--    return fx
--end
----
--print(make_func(tablew))




--function Lib(json)
--    function sobreNome_teste2_value (json) return json.sobreNome.teste2.value end
--    function nome (json) return json.nome end
--    function idade (json) return json.idade end
--    function array (json) return json.sobreNome.teste2.arrays end
--    return self
--end
--Lib()
--print(sobreNome_teste2_value(tablew))
--print(nome(tablew))
--print(idade(tablew))
--print(array(tablew))

--function Lib()
--    function foo(x, y) return x+y end
--    function goo(x, y) return x-y end
--    return self
--end
--Lib()
--print(foo(3, 2))




--
--function t (idx, ele)
--   -- print("ele ", ele)
--    return idx, ele
--end
--
--local value = {}
--for idx, ele in pairs(tablew) do
--    if type(ele) == "table" then
--        for idx2, ele2 in pairs(ele) do
--            print(t(idx2,ele2))
--        end
--    else
--        print(t(idx,ele))
--    end
--
--
--print("-------------")
--for i, linha in pairs(value) do
--    --print(i, linha)
--end



--function t (idx, ele)
--    if type(ele) == "table" then
--        for idx2, ele2 in pairs(ele) do
--            return t(idx2, ele2)
--        end
--    else
--        return idx, ele
--    end
--end
--
--local value = {}
--for idx, ele in pairs(tablew) do
--    print("www ",t(idx, ele))
--end
--print("-------------")
--for i, linha in pairs(value) do
--    print(i, linha)
--end
--local size = #c
--
--
--local value = "tablew"
--for line = 1, size do
--    value = value .. "[c[" .. line .."]]"
--end
--
--print(value)
--print(tablew[c[1]][c[2]][c[3]])
--
--
--for key,value in pairs(getmetatable(o)) do
--    print(key, value)
--end

--local Class = {}
--
--function Class.new(factor)
--    local instance = {factor = factor}
--    return setmetatable(instance, {__index = Class})
--end
--
--function Class:multiply(n)
--    return self.factor * n
--end
--
--local m = Class.new(5)
--print(m:multiply(6))


--
--function Lib()
--    function foo(x, y) return x+y end
--    function goo(x, y) return x-y end
--    return self
--end
--Lib()
--print(foo(3, 2))



--
--
--function adder(x)
--    -- The returned function is created when adder is
--    -- called, and remembers the value of x:
--    return function (y) return x  end
--end
--a1 = adder(value)
--
--print("ewwwwwwwwwwwwww" , a1("tablew[c[1]][c[2]][c[3]]"))
--
--print(_G['_G'] == _G)
--
--defaultFavs = {animal = 'gru', food = 'donuts'}
--myFavs = {food = 'pizza'}
--setmetatable(myFavs, {__index = defaultFavs})
--eatenBy = myFavs.animal
--
--print(eatenBy)


--functionTable = {}
--testString = "tablew[c[1]][c[2]][c[3]]"
--
--function a(param)
--    print( param)
--end
--
--functionTable[1] = "a"
--
--load(functionTable[1].."(testString)")()







--for line in size do
--    table.insert(t)
--end
--s = table.concat(t, "\n") .. "\n"



local k
--for i = 1, #c do
--    if i == size then
--
--    else
--        k ="[c[i]]"
--    end
--end





--print(table["sobreNome"]["teste"])

--local size = #c
--print(size)
--local table = {
--    nome = "Marcelo",
--    sobreNome = {
--        teste = "ewewew"
--    },
--    idade = 20,
--}
--
--print(table.sobreNome.teste)


--print(table.sobreNome.s1)
--local v = {}
--
--for i, value in ipairs(c) do
--
--    if i == size then
--
--    end
--end


--print(type(c))
--for i, value in ipairs(c) do
--    print(value)
--end





--local accessToken = "eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJKam55c1ZfSkZwVElxTDEtbDNZQ0VIOFFMYmhhS19GS1pBVjN3dTRVQ3p3In0.eyJleHAiOjE2MTEyMzQ0NjAsImlhdCI6MTYxMTIzNDE2MCwianRpIjoiMmU2YWQxYWQtMzU1Zi00YWVlLThkNTMtY2UzOTNkZDZiNTFlIiwiaXNzIjoiaHR0cDovLzM0LjEyMy4yMDguMjM4L2F1dGgvcmVhbG1zL2FwaWdlZSIsImF1ZCI6ImFjY291bnQiLCJzdWIiOiI2Y2NhZTZmNC1hMGVhLTQxZTUtOGZmMC1hYjgzOWU1NDA3ZjkiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJjbGllbnQtdHdvIiwic2Vzc2lvbl9zdGF0ZSI6IjA2M2QyMzc3LTU1N2MtNDAyMS1hZGQ1LTQ1YThjMTgxMTRjMiIsImFjciI6IjEiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsic2VsbGVyIiwib2ZmbGluZV9hY2Nlc3MiLCJ1bWFfYXV0aG9yaXphdGlvbiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoiZW1haWwgcHJvZmlsZSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwibmFtZSI6ImpvZSIsInByZWZlcnJlZF91c2VybmFtZSI6ImpvZSIsImZhbWlseV9uYW1lIjoiam9lIn0.Zb0zZRYd89KSkBHbZkOBabqerxO7jeTwpJwDTd2Yrr89aiSOEHU53CM6fkF5Mdb1aIGZIKOdakdwdHfU-lkcdrl4PZgxNJHXv1WE6oir1q3IUtXz8i53poxFxuIgoPu9GL3z83zzIlOojq-iJq66o641k3Azy2icKaBpB_6IF0qXRR_r5Xsv4LtU9Xt5fKk_jih07egDSYn5pWP-cwby2I3DGDg_b9jheWrO8gp-5fA0Vi3AdqjB1vGJrbg8Fc5SxKTUHVu95vJzimPk6Ysb7mvlSDuvNlpPGB1UXnMqtZGhOJnCSfZBDl3IRmeQGptrTCySmzjGcxWqEtnd69I00g, client: 172.17.0.1, server: kong"
----print(type(header))
--
--
--print(string.sub (accessToken, 1 ,100))

--for token in string.gmatch(accessToken, "[^%,]+") do
--    print(token)
--end

--local token_jwt
--local itera = 0
--for  token in string.gmatch(header, "[^%,]+") do
--        print(token:sub(8))
--end
--print(token_jwt)

--print(string.sub ("ABCDEF", 2, 3))  --> BC
--print(string.sub ("ABCDEF", 3)  )   --> CDEF
--print(string.sub ("ABCDEF", -1))    -->


--for token in string.gmatch(str, "[^%s]+") do
--    print(token)
--end
--local divider = str:find(' ')
--local yy = str:sub(divider+1)
-- d = string.match(yy, "[^,]+")
--print(d)
--token = d:sub(1, -2)
--print(token)
--
--text = "sometext"
--text = text:sub(1, -2)
--print(text)





--print(string.sub("Hello,Lua,user", 1 ,5) )
--print(string.sub("Hello, Lua, user", 7) )     -- from character 7 including 7 until the endLua user
--print(string.sub("Hello Lua user", 7, 9) )  -- from character 7 until and including 9    Lua
--print(string.sub("Hello Lua user", -8)  )   -- 8 from the end until the end   Lua user
--print(string.sub("Hello Lua user", -8, 9))  -- 8 from the end until 9 from the start  Lua
--print(string.sub("Hello Lua user", -8, -6) )-- 8 from the end until 6 from the end ua

--//aceita somente c <= 5

--if i == 1 then
--    print(tablew[c[1]])
--elseif i == 2 then
--    print(tablew[c[1]][c[2]])
--else
--    print(tablew[c[1]][c[2]][c[3]])
--end
--
--
--print(tablew[c[1]][c[2]][c[3]])