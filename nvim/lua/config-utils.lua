-- Utils for config files

local scopes = {o = vim.o, b = vim.bo, w = vim.wo}


-- This function will help to set options. If the option is buffer or windows
-- specific, it will also set the global variant. Not sure why, but necessary
-- for certain options to be set properly.
function Opt(scope, key, value)
  scopes[scope][key] = value
  if scope ~= 'o' then scopes['o'][key] = value end
end


-- This function wraps key bindings settings
function Map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
