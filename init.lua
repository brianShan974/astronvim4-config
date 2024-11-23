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

-- if vim.fn.has "mac" then
--   vim.cmd.colorscheme "onedark"
-- elseif vim.fn.has "unix" then
--   vim.cmd.colorscheme "catppuccin"
-- end
vim.cmd.colorscheme "onedark"

-- markdown-preview.nvim

g.mkdp_auto_close = 0

-- for transparency

-- vim.cmd [[
--   hi! link Conceal Normal
--   hi! Normal ctermbg=NONE
--   hi! NonText ctermbg=NONE
-- ]]

-- nvim-notify

require("notify").setup {
  background_colour = "#000000",
}

-- vimtex

g.vimtex_view_method = "skim"

-- Below is config for neovide

if vim.g.neovide then
  -- font
  vim.o.guifont = "CaskaydiaCove Nerd Font:h17"

  -- fullscreen
  vim.g.neovide_fullscreen = true

  -- cursor vfx
  vim.g.neovide_cursor_vfx_mode = "railgun"
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.5
  vim.g.neovide_cursor_vfx_particle_density = 15.0
end
