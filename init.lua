local g = vim.g

-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"

-- colorscheme
if vim.fn.has "mac" then
  vim.cmd.colorscheme "onedark"
elseif vim.fn.has "unix" then
  vim.cmd.colorscheme "catppuccin"
end

-- markdown-preview.nvim
g.mkdp_auto_start = 1
vim.cmd [[
  function OpenMarkdownPreview (url)
    let cmd = "open -a Firefox -n --args --new-window " . shellescape(a:url) . " &"
    silent call system(cmd)
  endfunction
]]
g.mkdp_open_ip = "127.0.0.1"
g.mkdp_port = 8080
g.mkdp_browserfunc = "OpenMarkdownPreview"
-- vim.cmd [[
--   function OpenMarkdownPreview (url)
--     execute "silent ! open -a Google\ Chrome -n --args --new-window " . a:url
--   endfunction
--   let g:mkdp_browserfunc = 'OpenMarkdownPreview'
-- ]]

-- for transparency
-- vim.cmd [[
--   hi! link Conceal Normal
--   hi! Normal ctermbg=NONE
--   hi! NonText ctermbg=NONE
-- ]]

-- notify
require("notify").setup {
  background_colour = "#000000",
}
