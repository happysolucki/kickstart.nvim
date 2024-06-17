return {
  {
    'zaldih/themery.nvim',
    lazy = false,
    priority = 1000,
    dependencies = {
      'aktersnurra/no-clown-fiesta.nvim',
      'scottmckendry/cyberdream.nvim',
      'shaunsingh/moonlight.nvim',
      'savq/melange-nvim',
      'neanias/everforest-nvim',
      'ribru17/bamboo.nvim',
      'slugbyte/lackluster.nvim',
      'Verf/deepwhite.nvim',
      'sho-87/kanagawa-paper.nvim',
      { 'rose-pine/neovim', name = 'rose-pine' },
    },
    config = function()
      require('themery').setup {
        themeConfigFile = '~/.config/nvim/lua/custom/theme.lua',
        themes = {
          {
            name = 'Bamboo (Multiplex)',
            colorscheme = 'bamboo',
            before = [[
              require('bamboo').setup {
                -- optional configuration here
                style = 'multiplex',
              }
            ]],
          },
          {
            name = 'Cyberdream Dark',
            colorscheme = 'cyberdream',
            before = [[
              require('cyberdream').setup {
                transparent = true,
                italic_comments = true,
                hide_fillchars = true,
                borderless_telescope = true,
                terminal_colors = true,
              }
            ]],
          },
          {
            name = 'Deepwhite',
            colorscheme = 'deepwhite',
            before = [[
              vim.o.background = 'light'
            ]],
          },
          {
            name = 'No Clown Fiesta',
            colorscheme = 'no-clown-fiesta',
            before = [[
              vim.o.background = 'dark'
              require('no-clown-fiesta').setup {
                transparent = false, -- Enable this to disable the bg color
                styles = {
                  -- You can set any of the style values specified for `:h nvim_set_hl`
                  comments = {},
                  functions = {},
                  keywords = {},
                  lsp = { underline = true },
                  match_paren = {},
                  type = { bold = true },
                  variables = {},
                },
              }

              vim.api.nvim_create_autocmd('ColorScheme', {
                pattern = 'no-clown-fiesta',
                group = vim.api.nvim_create_augroup('NoClownFiestsHls', {}),
                callback = function()
                  vim.api.nvim_set_hl(0, 'MiniStatusLineFilename', { link = '@variable' })
                end,
              })
            ]],
          },
          {
            name = 'Kanagawa Paper',
            colorscheme = 'kanagawa-paper',
            before = [[
              vim.o.background = 'dark'
            ]],
          },
          {
            name = 'Moonlight',
            colorscheme = 'moonlight',
          },
          {
            name = 'Melange Dark',
            colorscheme = 'melange',
            before = [[
              vim.o.background = 'dark'
            ]],
            after = [[
              vim.cmd.highlight('IndentLine guifg=#c1a78e')
              vim.cmd.highlight('IndentLineCurrent guifg=#7b9695')
            ]],
          },
          {
            name = 'Melange Light',
            colorscheme = 'melange',
            before = [[
              vim.o.background = 'light'
            ]],
          },
          {
            name = 'Everforest Light (Soft)',
            colorscheme = 'everforest',
            before = [[
              vim.o.background = 'light'

              require('everforest').setup {
                background = 'soft',
              }
            ]],
          },
          {
            name = 'Everforest Light (Medium)',
            colorscheme = 'everforest',
            before = [[
              vim.o.background = 'light'

              require('everforest').setup {
                background = 'medium'
              }
            ]],
          },
          {
            name = 'Everforest Light (Hard)',
            colorscheme = 'everforest',
            before = [[
              vim.o.background = 'light'

              require('everforest').setup {
                background = 'hard',
              }
            ]],
          },
          {
            name = 'Everforest Dark (Soft)',
            colorscheme = 'everforest',
            before = [[
              vim.o.background = 'dark'

              require('everforest').setup {
                background = 'soft',
              }
            ]],
          },
          {
            name = 'Everforest Dark (Medium)',
            colorscheme = 'everforest',
            before = [[
              vim.o.background = 'dark'

              require('everforest').setup {
                background = 'medium'
              }
            ]],
          },
          {
            name = 'Everforest Dark (Hard)',
            colorscheme = 'everforest',
            before = [[
              vim.o.background = 'dark'

              require('everforest').setup {
                background = 'hard',
              }
            ]],
          },
          {
            name = 'Everforest Dark (Ultra Hard)',
            colorscheme = 'everforest',
            before = [[
              vim.o.background = 'dark'

              require('everforest').setup {
                background = 'hard',
                colours_override = function(palette)
                  palette.bg0 = '#1A2024'
                end,
              }
            ]],
          },
          {
            name = 'Rose Pine (Dawn)',
            colorscheme = 'rose-pine-dawn',
          },
          {
            name = 'Rose Pine (Main)',
            colorscheme = 'rose-pine-main',
          },
          {
            name = 'Rose Pine (Moon)',
            colorscheme = 'rose-pine-moon',
          },
          {
            name = 'Lackluster',
            colorscheme = 'lackluster',
          },
        },
      }
    end,
  },
  {
    'mcchrish/zenbones.nvim',
    dependencies = { 'rktjmp/lush.nvim' },
    -- priority = 1000,
  },
  {
    'comfysage/evergarden',
    config = function()
      -- require('evergarden').setup {
      --   contrast_dark = 'hard',
      -- }
    end,
  },
  -- {
  --   'EdenEast/nightfox.nvim',
  --   config = function()
  --     -- require('nightfox').setup()
  --     -- vim.cmd 'colorscheme duskfox'
  --   end,
  -- },
  {
    'fynnfluegge/monet.nvim',
    name = 'monet',
    opts = {},
    -- config = function ()
    --   require('monet').setup {}
    -- end
  },
}
