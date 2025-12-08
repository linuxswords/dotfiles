return {
  "ggandor/leap.nvim",
  keys = false,
  config = function(_, opts)
    local leap = require("leap")
    -- add your own keymaps here
    vim.keymap.set({ "n", "x", "o" }, "<leader>j", "<Plug>(leap)")
    vim.keymap.set("n", "<leader>J", "<Plug>(leap-from-window)")
  end,
}
