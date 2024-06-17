-- if vim.g.colors_name == 'evergarden' then
--   local ns = vim.api.nvim_create_namespace 'javascriptreact'
--   vim.api.nvim_set_hl(ns, '@tag.javascript', { fg = '#E69875' })
--   vim.api.nvim_win_set_hl_ns(0, ns)
-- end

vim.opt_local.tabstop = 2
vim.opt_local.shiftwidth = 2
vim.opt_local.expandtab = true
vim.opt_local.formatoptions:remove { 'r', 'o' }
