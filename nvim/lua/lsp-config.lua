vim.o.completeopt = 'menuone,noinsert,noselect'
vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}

require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }
require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
require'lspconfig'.rust_analyzer.setup{ on_attach=require'completion'.on_attach }


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

vim.g.completion_chain_complete_list = {
  default = {
    { complete_items = { 'lsp' } },
    { complete_items = { 'buffers' } },
    { mode = { '<c-p>' } },
    { mode = { '<c-n>' } }
  },
}

Map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', {})
Map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', {})
Map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', {})
Map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', {})
Map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', {})
Map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', {})
