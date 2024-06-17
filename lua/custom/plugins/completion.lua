return {
  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    lazy = false,
    priority = 100,
    dependencies = {
      -- Adds pictograms
      'onsails/lspkind.nvim',
      -- Adds a number of user-friendly snippets
      -- 'rafamadriz/friendly-snippets',
      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-buffer',
      -- Snippet Engine & its associated nvim-cmp source
      { 'L3MON4D3/LuaSnip', build = 'make install_jsregexp' },
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
      require 'custom.completion'
    end,
  },
}
