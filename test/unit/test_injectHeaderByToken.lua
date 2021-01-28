local lu = require('luaunit')

function splitHeaderName(value)
    local world = {}
    local idx = 1
    for i in string.gmatch(value, "([^.]+)") do
        world[idx] = i
        idx = idx + 1
    end
    return world
end

function changeHeaderName(world)
    local m = table.concat(world, " ")
    return "x_" .. string.gsub(m, " ", "_")
end

function callHeaderName(jsonDes, world)
    local value
    if 1 == #world then
        value = jsonDes[world[1]]
    elseif 2 == #world then
        value = jsonDes[world[1]][world[2]]
    elseif 3 == #world then
        value = jsonDes[world[1]][world[2]][world[3]]
    elseif 4 == #world then
        value = jsonDes[world[1]][world[2]][world[3]][world[4]]
    elseif 5 == #world then
        value = jsonDes[world[1]][world[2]][world[3]][world[4]][world[5]]
    end
    return value
end

function injectHeaderByToken(header_names, jsonDes)
    local set_header = {}
    local size = #header_names

    if size > 0 then
        local header = {}
        for line = 1, size do
            local world = splitHeaderName(header_names[line])
            header[header_names[line]] = callHeaderName(jsonDes, world)
        end

        for idx, line in pairs(header) do
            local nameHeader = changeHeaderName({ idx })
            if nameHeader ~= nil or nameHeader ~= '' then
                set_header[idx] = line
            end
        end
    end
    return set_header
end

TestMyStuff = {} --class
function TestMyStuff:testWithNumbers()


    local response = {
        azp = "client-two",
        iat = 1611841776,
        iss = "http://34.123.208.238/auth/realms/apigee",
        email = "joe@luizalabs.com",
        given_name = "joe",
        sub = "6ccae6f4-a0ea-41e5-8ff0-ab839e5407f9",
        family_name = "joe",
        scope = "email order:write profile",
        name = "joe joe",
        session_state = "a7de3722-3125-4c46-ac69-36d819041e6d",
        aud = "account",
        exp = 1611842076,
        jti = "9cd39651-d02c-4390-86c2-e84fcb8746d8",
        email_verified = false,
        acr = "1",
        preferred_username = "joe",
        acesso = {
            status = "ativo"
        },
        permissao = {
            squad = {
                compras = true,
                mercado = {
                    valor = 2000,
                    real = {
                        valor = 33200
                    }
                }
            }
        },
        realm_access = {
            roles = {
                "seller",
                "offline_access",
                "uma_authorization",
                "customer"
            }
        },
        resource_access = {
            account = {
                roles = {
                    "manage-account",
                    "manage-account-links",
                    "view-profile"
                }
            }

        }
    }

    local headers_jwks = { "name", "acesso.status", "permissao.squad.compras", "permissao.squad.mercado.valor", "permissao.squad.mercado.real.valor", "permissao.squad.mercado.real.valor.naoexiste" } --"realm_access",
    result = injectHeaderByToken(headers_jwks, response)

    for k, v in pairs(result) do
        print(k, '  ', v)
        --lu.assertTrue(check(headers_jwks, k))
    end
    --lu.assertEquals( result["name"],  "joe joe"  )
    --lu.assertEquals( result["preferred_username"],  "joe"  )
end

function check(headers_jwks, header)
    for _, v in ipairs(headers_jwks) do
        if v == header then
            return true
        end
    end
    return false
end

os.exit(lu.LuaUnit.run())