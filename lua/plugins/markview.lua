return {
  "OXY2DEV/markview.nvim",
  lazy = false, -- Recommended
  dependencies = {
    -- You will not need this if you installed the
    -- parsers manually
    -- Or if the parsers are in your $RUNTIMEPATH
    "nvim-treesitter/nvim-treesitter",

    "nvim-tree/nvim-web-devicons",
  },

  opts = {
    preview = {
      enable = true,
      modes = { "n", "i", "no", "c" },
      hybrid_modes = { "i" },
      filetypes = { "markdown" },
    },
    markdown = {
      code_blocks = { hl = "dark" },
      tables = { use_virt_lines = false },
      list_items = {
        ident_size = 3,
        marker_plus = {
          add_padding = false,
          marker = "•",
          marker_hl = "rainbow2",
        },
        marker_minus = {
          add_padding = false,
          marker = "•",
          marker_hl = "rainbow2",
        },
        marker_star = {
          add_padding = false,

          marker = "•",
          marker_hl = "rainbow2",
        },
      },
    },
  },
}
