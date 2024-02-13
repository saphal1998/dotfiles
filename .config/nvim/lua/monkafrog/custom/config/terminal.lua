vim.cmd([[
  autocmd TermOpen term://* setlocal nonumber norelativenumber
]])

vim.cmd([[
  autocmd TermOpen * startinsert
]])
