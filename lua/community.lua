-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- import/override with your plugins folder

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },

  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },

  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.tabout-nvim" },

  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.rust" },

  -- noice.nvim is somehow incompatible with AstroNvim 4.0 on my machine.
  -- { import = "astrocommunity.utility.noice-nvim" },
}
