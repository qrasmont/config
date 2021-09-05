vim.o.completeopt = 'menuone,noselect'

vim.opt.shortmess:append "c"

-- Cmp config
local cmp = require'cmp'
cmp.setup({
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
    }
})

-- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
local comp_cap = vim.lsp.protocol.make_client_capabilities()
comp_cap = require('cmp_nvim_lsp').update_capabilities(comp_cap)

require'lspconfig'.clangd.setup{
    capabilities = comp_cap,
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

USER = vim.fn.expand('$USER')

local sumneko_root_path = "/home/" .. USER .. "/.config/nvim/lua-language-server"
local sumneko_binary = "/home/" .. USER .. "/.config/nvim/lua-language-server/bin/Linux/lua-language-server"

require'lspconfig'.sumneko_lua.setup {
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

Map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
Map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {})
Map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {})
Map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {})
Map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {})
Map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {})
