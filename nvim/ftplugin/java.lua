local jdtls_config = require("custom.config.lsp.jdtls").setup()

-- @note to self: Good practice to use pcall to require instead of simply requiring
local pkg_status, jdtls = pcall(require, "jdtls")
if not pkg_status then
  vim.notify("Unable to load nvim-jdtls", vim.log.levels.ERROR)
  return
end

jdtls.start_or_attach(jdtls_config)
