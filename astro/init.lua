return {
    colorscheme = "gruvbox",
  
    updater = { channel = "nightly" },
  
    highlights = {
      gruvbox = {
        StatusLine = { fg = "#ebdbb2", bg = "#504945" },
      },
    },
  
    plugins = {
      init = {
        ["ellisonleao/gruvbox.nvim"] = { version = "1.0.0" },
      },
    },
  }