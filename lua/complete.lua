-- condição para arquivos Markdown =========================================
if extension == "md" then
  require("tabnine")
else

  require("lsp")
end
