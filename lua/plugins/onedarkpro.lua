local t = vim.g.neovide and true or false

return {
  {
    "onedarkpro.nvim",
    opts = {
      options = {
        cursorline = true,
        transparency = not t,
      },
    },
  },
}
