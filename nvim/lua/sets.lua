HOME = vim.fn.expand('$HOME')

vim.o.number = true
vim.o.relativenumber = true
vim.o.showmode = false

vim.o.hidden = true


vim.o.autoindent = true
vim.o.smartindent = true

local undir = HOME .. '/.vimdid'
vim.o.undodir = undir
vim.o.undofile = true

vim.o.ruler = true
vim.o.showcmd = true
vim.o.mouse = 'a'
vim.o.colorcolumn = '80'
vim.o.wrap = false

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true


vim.o.hlsearch = false
vim.o.incsearch = true

vim.o.scrolloff = 8
vim.o.signcolumn = 'yes'

vim.o.list = true
vim.o.listchars = 'tab:▸ ,trail:•,extends:→,precedes:←'

vim.o.inccommand = 'nosplit' -- live substitution

vim.o.laststatus = 3

vim.o.cursorline = true

vim.opt_global.cmdheight = 0
vim.opt_global.spell = true

vim.opt.showcmdloc = "statusline"

-- Show the cursor line in the current buffer only
local group = vim.api.nvim_create_augroup("CursorLine", { clear = true })

vim.api.nvim_create_autocmd("WinLeave", {
    group = group,
    callback = function()
        vim.opt_local.cursorline = false
    end,
})

vim.api.nvim_create_autocmd("WinEnter", {
    group = group,
    callback = function()
        vim.opt_local.cursorline = true
    end,
})
