local t = require('telescope')

t.setup{
  defaults = {
    vimgrep_arguments = {
      "rg",
      "--hidden",
      "--color=never",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
      "--trim"
    }
  }
}

t.load_extension('fzf')
t.load_extension('file_browser')
