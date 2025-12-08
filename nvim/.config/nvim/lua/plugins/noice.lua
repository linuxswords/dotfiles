return {
  "folke/noice.nvim",
  opts = {
    messages = {
      -- Other settings...
    },
    presets = {
      bottom_search = false, -- use a classic bottom cmdline for search
      command_palette = true, -- position the cmdline and popupmenu together
      long_message_to_split = true, -- long messages will be sent to a split
      inc_rename = false, -- noice moves commandline to the center of the screen during `inc_rename`
      lsp_doc_border = false, -- add a border to hover docs
    },
    routes = {
      {
        filter = { event = "notify" },
        view = "messages",
        timeout = 0,
      },
    },
  },
}
