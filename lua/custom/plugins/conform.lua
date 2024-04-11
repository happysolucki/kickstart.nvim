return {
  'stevearc/conform.nvim',
  config = function()
    require('conform').setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        -- Conform will run multiple formatters sequentially
        python = { 'isort', 'black' },
        -- Use a sub-list to run only the first available formatter
        javascript = { { 'eslint_d', 'prettierd', 'prettier' } },
      },
      format_on_save = function(bufnr)
        -- Disable with a global or buffer-local variable
        if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
          return
        end
        return { timeout_ms = 500, lsp_fallback = true }
      end,
    }

    vim.api.nvim_create_user_command('FormatToggle', function()
      if vim.b.disable_autoformat or vim.g.disable_autoformat then
        vim.b.disable_autoformat = false
        vim.g.disable_autoformat = false
        print 'autoformat-on-save enabled'
      else
        vim.b.disable_autoformat = true
        vim.g.disable_autoformat = true
        print 'autoformat-on-save disabled'
      end
    end, { desc = 'Toggle autoformat-on-save' })

    vim.keymap.set('n', '<leader>tf', ':FormatToggle<cr>', { desc = 'toggle auto-format' })
  end,
}
