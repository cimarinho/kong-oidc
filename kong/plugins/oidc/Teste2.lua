---
--- Generated by Luanalysis
--- Created by marcelo.
--- DateTime: 21/01/2021 18:00
---

local s = ""

if  s == nil or s == '' then
    print("S")
end

--local header = {"teste value junta"}
--
--
--for idx, line in pairs(header) do
--    local value = idx
--end
--
--local t = { "teste value junta" }
--local m = table.concat(t, " ")
--local a = "x_" ..  string.gsub(m, " ", "_") -- "concatenate"
--
--print(a)



--local c = { "sobreNome teste", "nome", "idade", "sobreNome teste2 value" }
--local size = #c
--local header = {}
--
--for line = 1, size do
--    print(line, '=',c[line])
--    header[line] = c[line]
--    --break;
--end
--
--print(#header)
--print(header[1])

-- //this computers fn-assoc.table
--local tableFunc = {
--    fooFn = function(args)
--        print("fn: fooFn, param: " .. args)
--    end,
--
--    barFn = function(args)
--        print("fn: barFn, param: " .. args)
--    end
--}
--
---- //this computers app logic (simplified)
--for k,v in pairs(tableCall) do
--    -- //set params
--    local fn      = tableKey[v["fn"]]
--    local param = v["param"]
--    -- //do the call if it exists in tableFunc
--    if tableFunc[fn] then
--        tableFunc[fn](param)
--    end
--end




--function foo()
--    print("Hello World!")
--end
--
--function foo_p(...)
--    print(...)
--end
--
--function bar(func)
--    func()
--end
--
--function baz(func, ...)
--    return func(...)
--end
--
--bar(foo) --outputs "Hello World!"
--baz(foo_p, "A string") --outputs "A string"






--local cjson = require("cjson")
--
--local json_foo = cjson.decode(string_foo)
--local ids = {}
--for idx, ele in pairs(json_foo) do
--    ids[idx] = ele["id"]
--end
--return ids