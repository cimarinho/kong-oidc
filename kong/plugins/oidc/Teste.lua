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

local c = { "sobreNome", "teste2", "value" }

function t (idx, ele)
    return idx, ele
end

local value = {}
for idx, ele in pairs(tablew) do
    value[idx] =  t(idx,ele)
end


print("-------------")
for i, linha in pairs(value) do
    print(i, linha)
end



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