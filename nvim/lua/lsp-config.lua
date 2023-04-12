vim.o.completeopt = 'menuone,noselect'

vim.opt.shortmess:append "c"

-- Cmp config
local cmp = require'cmp'
cmp.setup({
    snippet = { -- REQUIRED
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      end,
    },
    completion = {
      keyword_length = 3,
    },
    formatting = {
        format = function(entry, vim_item)
            -- fancy icons and a name of kind
            vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind

            -- set a name for each source
            vim_item.menu = ({
                buffer = "[Buffer]",
                nvim_lsp = "[LSP]",
                luasnip = "[LuaSnip]",
                nvim_lua = "[Lua]",
                latex_symbols = "[Latex]",
            })[entry.source.name]
            return vim_item
        end,
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = "path" },
        { name = "nvim_lua" },
    },
    experimental = {
        native_menu = false,
        ghost_text = true,
    },
    mapping = cmp.mapping.preset.insert({
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
})

-- TODO figure out new 0.7 api for aucmd and highlight
vim.cmd [[autocmd! ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd! ColorScheme * highlight FloatBorder guifg=white guibg=#1f2335]]

local border = {
      {"╭", "FloatBorder"},
      {"─", "FloatBorder"},
      {"╮", "FloatBorder"},
      {"│", "FloatBorder"},
      {"╯", "FloatBorder"},
      {"─", "FloatBorder"},
      {"╰", "FloatBorder"},
      {"│", "FloatBorder"},
}

-- global border definition for all lang server
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or border
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local comp_cap = vim.lsp.protocol.make_client_capabilities()
comp_cap = require('cmp_nvim_lsp').default_capabilities(comp_cap)

require'lspconfig'.clangd.setup{
    capabilities = comp_cap,
    cmd = { "clangd-12" }
}
require'lspconfig'.tsserver.setup{
    capabilities = comp_cap,
}
require'lspconfig'.rust_analyzer.setup{
    capabilities = comp_cap,
}
require'lspconfig'.pyright.setup{
    capabilities = comp_cap,
}
require'lspconfig'.gopls.setup{
    capabilities = comp_cap,
}

require'lspconfig'.csharp_ls.setup{
    capabilities = comp_cap,
    on_attach = function()
        vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
    end
}

require'lspconfig'.bashls.setup{
    capabilities = comp_cap,
}

USER = vim.fn.expand('$USER')

local sumneko_root_path = "/home/" .. USER .. "/.config/nvim/lua-language-server"
local sumneko_binary = "/home/" .. USER .. "/.config/nvim/lua-language-server/bin/lua-language-server"

require'lspconfig'.lua_ls.setup {
    cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
                -- Setup your lua path
                path = vim.split(package.path, ';')
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'}
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
            }
        }
    }
}

vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)
vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help)
vim.keymap.set('n', 'ga', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format)
vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename)
