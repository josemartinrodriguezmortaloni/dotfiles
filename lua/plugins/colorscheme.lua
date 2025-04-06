local theme = "cyberdream"
function GetGooseLuaLineTheme()
  if theme == "catppuccin" then
    local catpuccin = require("catppuccin.palettes.mocha")
    return {
      normal = {
        a = { fg = catpuccin.crust, bg = catpuccin.mauve },
        b = { fg = catpuccin.mauve, bg = catpuccin.base },
        c = { fg = catpuccin.subtext0, bg = catpuccin.base },
      },

      insert = { a = { fg = catpuccin.base, bg = catpuccin.peach, gui = "bold" } },
      visual = { a = { fg = catpuccin.base, bg = catpuccin.sky } },
      replace = { a = { fg = catpuccin.base, bg = catpuccin.green } },

      inactive = {
        a = { fg = catpuccin.text, bg = catpuccin.surface0 },
        b = { fg = catpuccin.text, bg = catpuccin.surface0 },
        c = { fg = catpuccin.text, bg = catpuccin.surface0 },
      },
    }
  end

  return "auto"
end

---@diagnostic disable: missing-fields
return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  {
    "rebelot/kanagawa.nvim", -- You can replace this with your favorite colorscheme
    lazy = false, -- We want the colorscheme to load immediately when starting Neovim
    priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
    opts = {
      -- Replace this with your scheme-specific settings or remove to use the defaults
      transparent = true,
      terminalColors = true,
      background = {
        -- light = "lotus",
        dark = "wave", -- "wave, dragon"
      },
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
    },
  },
  {
    -- Plugin for the Oldworld color scheme
    "dgox16/oldworld.nvim",
    lazy = false, -- Load this plugin immediately
    priority = 1000, -- High priority to ensure it loads early
    terminal_colors = true, -- enable terminal colors
    variant = "cooler",
    styles = { -- You can pass the style using the format: style = true
      comments = { italic = true }, -- style for comments
      keywords = {}, -- style for keywords
      identifiers = {}, -- style for identifiers
      functions = { italic = true }, -- style for functions
      variables = {}, -- style for variables
      booleans = {}, -- style for booleans
    },
    integrations = { -- You can disable/enable integrations
      alpha = true,
      cmp = true,
      flash = true,
      gitsigns = true,
      hop = false,
      indent_blankline = true,
      lazy = true,
      lsp = true,
      markdown = true,
      mason = true,
      navic = true,
      neo_tree = true,
      neorg = true,
      noice = true,
      notify = true,
      rainbow_delimiters = true,
      telescope = true,
      treesitter = true,
      bufferline = true,
    },
    highlight_overrides = {
      Normal = { bg = "none" },
      NormalNC = { bg = "none" },
    },
  },
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000000,
    opts = {
      borderless_pickers = false,
      saturation = 0.95,
      cache = true,
      -- Enable italics comments
      italic_comments = true,
      transparent = true,
      -- Disable or enable colorscheme extensions
      extensions = {
        alpha = true,
        blinkcmp = true,
        cmp = true,
        dashboard = true,
        fzflua = true,
        gitpad = true,
        gitsigns = true,
        grapple = true,
        grugfar = true,
        heirline = true,
        helpview = true,
        hop = true,
        indentblankline = true,
        kubectl = true,
        lazy = true,
        leap = true,
        markdown = true,
        markview = true,
        mini = true,
        noice = true,
        neogit = true,
        notify = true,
        rainbow_delimiters = true,
        snacks = true,
        telescope = true,
        treesitter = true,
        treesittercontext = true,
        trouble = true,
        whichkey = true,
      },
    },
    init = function()
      vim.api.nvim_set_hl(0, "TroubleNormal", { bg = "none", ctermbg = "none" })
      vim.api.nvim_set_hl(0, "TroubleNormalNC", { bg = "none", ctermbg = "none" })
      vim.api.nvim_set_hl(0, "TroubleNormal", { bg = "none", ctermbg = "none" })
      vim.api.nvim_set_hl(0, "TroubleNormalNC", { bg = "none", ctermbg = "none" })
      vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#3c4048", bg = "none" })
      vim.api.nvim_set_hl(0, "IndentBlanklineChar", { fg = "#7b8496" })
      vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#232429" })
      vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { bg = "#232429" })
      vim.api.nvim_set_hl(0, "TreesitterContextBottom", { bg = "#232429", underline = true })
    end,
  },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oldworld",
    },
  },
}
