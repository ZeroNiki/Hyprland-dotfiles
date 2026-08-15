require("nvim-treesitter.configs").setup({
  ensure_installed = { "lua", "python", "javascript", "html", "css", "bash", "c", "hcl", "terraform"},
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})
