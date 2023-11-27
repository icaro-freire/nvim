-- variáveis locais
local ls = require("luasnip")
local t = ls.text_node
local fmta = require("luasnip.extras.fmt").fmta
local i = ls.insert_node
-- snippets gerais (para testes)
return {
  ls.snippet(
    { trig = "ic" },
    { t("Ícaro Vidal Freire") }
  ),
  ls.snippet(
    { trig = "mm" },
    { t("|> ") }
  ),
}
