-- lspconfig

local function all_lsp_config()
  -- lua_ls
  vim.lsp.config('lua_ls', {
    on_init = function(client)
      if client.workspace_folders then
        local path = client.workspace_folders[1].name
        if
            path ~= vim.fn.stdpath('config')
            and (vim.uv.fs_stat(path .. '/.luarc.json') or vim.uv.fs_stat(path .. '/.luarc.jsonc'))
        then
          return
        end
      end

      client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
        runtime = {
          version = 'LuaJIT',
          path = {
            'lua/?.lua',
            'lua/?/init.lua',
          },
        },
        workspace = {
          checkThirdParty = false,
          library = {
            vim.env.VIMRUNTIME
          }
        }
      })
    end,
    settings = {
      -- FIX: doesnt work! need to rewrite .editorconfig
      Lua = {}
    }
  })
  vim.lsp.enable 'lua_ls'

  -- python
  -- static diagnose with pyright
  -- other with ruff
  vim.lsp.config('pyright', {
    capabilities = (function()
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.publishDiagnostics.tagSupport.valueSet = { 2 }
      return capabilities
    end)(),
    settings = {
      python = {
        analysis = {
          useLibraryCodeForTypes = true,
          diagnosticSeverityOverrides = {
            reportUnusedVariable = "warning",
          },
          typeCheckingMode = "off", -- Set type-checking mode to off
          diagnosticMode = "off",   -- Disable diagnostics entirely
        },
      },
    },
  })
  vim.lsp.enable('pyright')
  vim.lsp.enable('ruff')

  -- qmlls
  -- on arch, qmlls is packaged in qt6-declarative
  -- as binary `qmlls6`.
  -- see `pacman -Ql qt6-declarative`
  vim.lsp.config('qmlls', {
    cmd = { 'qmlls6' }
  })
  vim.lsp.enable('qmlls')

  vim.lsp.enable('hls')
  vim.lsp.enable('clangd')
  vim.lsp.enable('gdscript')
  vim.lsp.enable 'ts_ls'
  vim.lsp.enable('nil_ls')
  vim.lsp.enable('roslyn_ls')
  vim.lsp.enable('bashls')
  vim.lsp.enable('texlab')
  vim.lsp.enable('rust_analyzer')
end

local lspconfig = {
  "neovim/nvim-lspconfig",
  lazy = false,
  config = all_lsp_config,
}

return lspconfig
