
-- ~/.config/nvim/lua/autotag-config.lua

require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}

require('nvim-ts-autotag').setup()
require('nvim-autopairs').setup()

