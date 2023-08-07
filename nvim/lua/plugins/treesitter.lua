require'nvim-treesitter.configs'.setup {
  -- languages wish to be supoorted
  ensure_installed = { "vim", "bash", "c", "cpp", "javascript", "json", "lua", "python", "typescript", "tsx", "css", "rust", "markdown", "markdown_inline" }, -- one of "all" or a list of languages

  highlight = { enable = true },
  indent = { enable = true },

  -- rainblow brackets 
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
