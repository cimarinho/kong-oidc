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
function TestMyStuff:testScopeValid()
    result = utils.scopeRequired({ "order:write" }, response)
    lu.assertTrue(result)
end

function TestMyStuff:testScopeInvalid()
    result = utils.scopeRequired({ "order:read" }, {response})
    lu.assertFalse(result)
end

os.exit(lu.LuaUnit.run())