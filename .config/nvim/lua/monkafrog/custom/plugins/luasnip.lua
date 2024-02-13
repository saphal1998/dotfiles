return {
  'L3MON4D3/LuaSnip',
  config = function()
    local ls = require 'luasnip'
    require('luasnip.loaders.from_vscode').lazy_load()
    ls.config.setup {}
    local s = ls.snippet
    local t = ls.text_node
    local i = ls.insert_node

    ls.add_snippets("go", {
      s("err", {
        t({ "if err != nil {", "\t" }), i(0), t({ "", "}" })
      })
    })
  end

}
