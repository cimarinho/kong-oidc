local lu = require('luaunit')
local utils = dofile("/home/marcelo/magalu/kong/plugins/marinho/kong-oidc/kong/plugins/oidc/utils.lua")
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

TestMyStuff = {} --class
function TestMyStuff:testHeaderValid()
    local headers_jwks = { "name", "acesso.status", "permissao.squad.compras" } --"realm_access",
    local x_headers = { "x_name", "x_acesso.status", "x_permissao.squad.compras" } --"realm_access",
    result = utils.injectHeaderByToken(headers_jwks, response)
    for i, header in pairs(result) do
        lu.assertTrue(check(x_headers, i))
    end
end

function TestMyStuff:testHeaderEmpty()
    result = utils.injectHeaderByToken({  }, response)
    lu.assertEquals(0 , #result )
end

function TestMyStuff:testResponseEmpty()
    local headers_jwks = { "name", "acesso.status", "permissao.squad.compras", "permissao.squad.mercado.valor", "permissao.squad.mercado.real.valor", "permissao.squad.mercado.real.valor.naoexiste" } --"realm_access",
    local x_headers = { "x-name", "x-acesso.status", "x-permissao.squad.compras", "x-permissao.squad.mercado.valor", "x-permissao.squad.mercado.real.valor" } --"realm_access",
    local resp = {}
    result = utils.injectHeaderByToken(headers_jwks, resp)
    for _, header in pairs(x_headers) do
        lu.assertTrue(check(x_headers, header))
    end
end

function TestMyStuff:testResponseWithoutHeader()
    local headers_jwks = { "name", "acesso.status", "permissao.squad.compras", "permissao.squad.mercado.valor", "permissao.squad.mercado.real.valor", "permissao.squad.mercado.real.valor.naoexiste" } --"realm_access",
    local resp = {
        given_name = "joe",
        sub = "6ccae6f4-a0ea-41e5-8ff0-ab839e5407f9"
    }
    result = utils.injectHeaderByToken(headers_jwks, resp)
    lu.assertEquals(0 , #result )
end

function check(headers_jwks, header)
    for _, v in ipairs(headers_jwks) do
        if v == header then
            --print(true)
            return true
        end
    end
    print(' false ',header )
    return false
end

function changeHeaderName(world)
    return "x_" .. string.gsub(world, " ", "_")
end

os.exit(lu.LuaUnit.run())