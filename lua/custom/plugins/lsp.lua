return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      { 'j-hui/fidget.nvim', opts = {} },
    },
    config = function()
      local capabilities = nil
      if pcall(require, 'cmp_nvim_lsp') then
        capabilities = require('cmp_nvim_lsp').default_capabilities()
      end

      local lspconfig = require 'lspconfig'

      local servers = {
        dartls = {
          manual_install = true,
          cmd = { 'dart', 'language-server', '--protocol=lsp' },
          filetypes = { 'dart' },
          init_options = {
            closingLabels = true,
            flutterOutline = true,
            onlyAnalyzeProjectsWithOpenFiles = true,
            outline = true,
            suggestFromUnimportedLibraries = true,
          },
          -- root_dir = root_pattern("pubspec.yaml"),
          settings = {
            dart = {
              completeFunctionCalls = true,
              showTodos = true,
            },
          },
        },
        vtsls = {},
        eslint = {
          settings = {
            format = false,
          },
        },

        lua_ls = {
          server_capabilities = {
            semanticTokensProvider = vim.NIL,
          },
          Lua = {
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
            -- NOTE: toggle below to ignore Lua_LS's noisy `missing-fields` warnings
            -- diagnostics = { disable = { 'missing-fields' } },
          },
        },
      }

      local servers_to_install = vim.tbl_filter(function(key)
        local t = servers[key]
        if type(t) == 'table' then
          return not t.manual_install
        else
          return t
        end
      end, vim.tbl_keys(servers))

      require('mason').setup()
      local ensure_installed = {
        'stylua',
        'lua_ls',
      }

      vim.list_extend(ensure_installed, servers_to_install)
      require('mason-tool-installer').setup { ensure_installed = ensure_installed }

      for name, config in pairs(servers) do
        if config == true then
          config = {}
        end
        config = vim.tbl_deep_extend('force', {}, {
          capabilities = capabilities,
        }, config)

        lspconfig[name].setup(config)
      end

      local disable_semantic_tokens = {
        lua = true,
      }

      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(args)
          local bufnr = args.buf
          local client = assert(vim.lsp.get_client_by_id(args.data.client_id), 'must have valid client')

          local settings = servers[client.name]
          if type(settings) ~= 'table' then
            settings = {}
          end

          local builtin = require 'fzf-lua'

          vim.opt_local.omnifunc = 'v:lua.vim.lsp.omnifunc'
          vim.keymap.set('n', 'gd', builtin.lsp_definitions, { buffer = 0 })
          vim.keymap.set('n', 'gr', builtin.lsp_references, { buffer = 0 })
          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = 0 })
          vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, { buffer = 0 })
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })

          vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, { buffer = 0 })
          vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = 0 })

          local filetype = vim.bo[bufnr].filetype
          if disable_semantic_tokens[filetype] then
            client.server_capabilities.semanticTokensProvider = nil
          end

          -- Override server capabilities
          if settings.server_capabilities then
            for k, v in pairs(settings.server_capabilities) do
              if v == vim.NIL then
                ---@diagnostic disable-next-line: cast-local-type
                v = nil
              end

              client.server_capabilities[k] = v
            end
          end
        end,
      })
    end,
  },
}
