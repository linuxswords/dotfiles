return {
  "stevearc/conform.nvim",
  optional = true,
  opts = {
    formatters_by_ft = {
      python = { "yapf" },
    },
    formatters = {
      yapf = {
        prepend_args = {
          "--style={based_on_style: google, coalesce_brackets: false, dedent_closing_brackets: true}",
        },
      },
    },
  },
}
