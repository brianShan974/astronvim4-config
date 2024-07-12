-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  -- import/override with your plugins folder

  { import = "astrocommunity.color.transparent-nvim" },

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.onedarkpro-nvim" },

  -- trouble.nvim won't work if installed by astrocommunity
  -- only works by using the init.lua file provided by astrocommunity
  -- { import = "astrocommunity.diagnostics.trouble-nvim" },

  { import = "astrocommunity.file-explorer.telescope-file-browser-nvim" },

  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },

  { import = "astrocommunity.motion.leap-nvim" },
  { import = "astrocommunity.motion.tabout-nvim" },

  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.rust" },

  -- noice.nvim is somehow incompatible with AstroNvim v4 on my machine.
  -- only works by using the init.lua file provided by astrocommunity
  -- and by setting the option config.lsp.signature.enabled to false.
  -- { import = "astrocommunity.utility.noice-nvim" },
}
