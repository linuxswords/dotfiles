return {
  {
    "linuxswords/nvim-chess",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      lichess_config = {
        token = "your_lichess_token_here", -- Your Lichess personal access token
        timeout = 30000, -- Request timeout in milliseconds
      },
      ui = {
        board_style = "unicode", -- "unicode" or "ascii" pieces
        auto_refresh = true, -- Auto-refresh board on updates
        show_coordinates = true, -- Show board coordinates (a-h, 1-8)
        highlight_last_move = true, -- Highlight the last move made
        puzzle_window_mode = "reuse", -- "reuse" to replace current buffer, "split" to always create new window
      },
    },
  },
}
