-- Utils for config files

-- This function wraps key bindings settings
function Map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Print the content of lua tables
function PRINT(stuff)
  print(vim.inspect(stuff))
end
