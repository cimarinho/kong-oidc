---
--- Generated by Luanalysis
--- Created by marcelo.
--- DateTime: 20/01/2021 17:15
---

local str = "Bearer eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJKam55c1ZfSkZwVElxTDEtbDNZQ0VIOFFMYmhhS19GS1pBVjN3dTRVQ3p3In0.eyJleHAiOjE2MTExNzQyNTEsImlhdCI6MTYxMTE3Mzk1MSwianRpIjoiZDBiOGUzNTgtMzlmYS00OWYzLWFjYzEtNTllNWJiNDdkZGM0IiwiaXNzIjoiaHR0cDovLzM0LjEyMy4yMDguMjM4L2F1dGgvcmVhbG1zL2FwaWdlZSIsImF1ZCI6ImFjY291bnQiLCJzdWIiOiI2Y2NhZTZmNC1hMGVhLTQxZTUtOGZmMC1hYjgzOWU1NDA3ZjkiLCJ0eXAiOiJCZWFyZXIiLCJhenAiOiJjbGllbnQtdHdvIiwic2Vzc2lvbl9zdGF0ZSI6IjViZjJmNmM3LWExNmUtNGRjZS05YzE0LTU3YjYzMDE5YmRhYiIsImFjciI6IjEiLCJyZWFsbV9hY2Nlc3MiOnsicm9sZXMiOlsic2VsbGVyIiwib2ZmbGluZV9hY2Nlc3MiLCJ1bWFfYXV0aG9yaXphdGlvbiJdfSwicmVzb3VyY2VfYWNjZXNzIjp7ImFjY291bnQiOnsicm9sZXMiOlsibWFuYWdlLWFjY291bnQiLCJtYW5hZ2UtYWNjb3VudC1saW5rcyIsInZpZXctcHJvZmlsZSJdfX0sInNjb3BlIjoiZW1haWwgcHJvZmlsZSIsImVtYWlsX3ZlcmlmaWVkIjpmYWxzZSwibmFtZSI6ImpvZSIsInByZWZlcnJlZF91c2VybmFtZSI6ImpvZSIsImZhbWlseV9uYW1lIjoiam9lIn0.ASHn5fTDY3v8dPfIv9xFhkIsb7Q-J74JIOrgroFdr2pTybPxc5Iq4X9IwCIpvo-oWgxQH9281YAKir6o-d9TQCY6nZy1wuKbfnp8Dbcqnkds1ExeVajoTsWF6-cnnFUj7ixItXhh64LRg1WU04fIKnBLxgyvWFoyn7q42MNe19CEJDkg1nq1VVrPpvxGeqEDd7ZKYeiPgPKON72POK1BidNe5TBef9aCGtiG4lgC1i__qNnDl3-pGAmeJTpFcFdS3CH44qM-kWWoNKKQtZPXa3P3QIuJIHgBS1KT968h5HTsSA9WdJqvcq8KrlJlXuWU8R5C2IDYEHtN5pZo-17bcg, client: 172.17.0.1, server: kong, request: \"GET / HTTP/1.1\", host: \"localhost:8000\""


--for token in string.gmatch(str, "[^%s]+") do
--    print(token)
--end
local divider = str:find(' ')
local yy = str:sub(divider+1)
d = string.match(yy, "[^%s]+")
token = d:sub(1, -2)
print(token)
--
--text = "sometext"
--text = text:sub(1, -2)
--print(text)

--for token in string.gmatch(t, "[^%s]+") do
--    print(token)
--end
--print(string.sub ("ABCDEF", 2, 3))  --> BC
--print(string.sub ("ABCDEF", 3)  )   --> CDEF
--print(string.sub ("ABCDEF", -1))    -->