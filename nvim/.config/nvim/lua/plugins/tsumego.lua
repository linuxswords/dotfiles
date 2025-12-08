return {
  "linuxswords/nvim-tsumego",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("nvim-tsumego").setup({
      -- Configuration options (see below)
    })
  end,
}
