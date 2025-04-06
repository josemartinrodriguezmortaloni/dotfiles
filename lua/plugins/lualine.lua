-- return {
--   "nvim-lualine/lualine.nvim",
--   dependencies = {
--     "nvim-tree/nvim-web-devicons",
--     "letieu/harpoon-lualine",
--   },
--   config = function()
--     local lualine = require("lualine")
--     local lazy_status = require("lazy.status")
--     local function maximize_status()
--       return vim.t.maximized and "Maximized   " or ""
--     end
--     local function split(str, delimiter)
--       local result = {}
--       for match in (str .. delimiter):gmatch("(.-)" .. delimiter) do
--         table.insert(result, match)
--       end
--       return result
--     end
--     local function get_harpoon_indicator(harpoon_entry)
--       local array = split(harpoon_entry.value, "/")
--       local file = array[#array]
--       return file:match("(.+)%..+$") or file
--     end
--
--     lualine.setup({
--       options = {
--         section_separators = { left = "", right = "" },
--         component_separators = { left = "", right = "" },
--         disabled_filetypes = {
--           "dapui_watches",
--           "dapui_breakpoints",
--           "dapui_scopes",
--           "dapui_console",
--           "dapui_stacks",
--           "dap-repl",
--           "Avante",
--           "AvanteInput",
--         },
--       },
--       sections = {
--         lualine_a = { { "mode", separator = { left = "" }, right_padding = 2 } },
--         lualine_y = {
--           {
--             "harpoon2",
--             icon = "♥",
--             indicators = {
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--             },
--             active_indicators = {
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--               get_harpoon_indicator,
--             },
--             color_active = { fg = "#d1feb8" },
--             _separator = " | ",
--             no_harpoon = "Harpoon not loaded",
--           },
--         },
--         lualine_x = {
--           {
--             lazy_status.updates,
--             cond = lazy_status.has_updates,
--           },
--           { "encoding" },
--           { "fileformat" },
--           { "filetype" },
--         },
--         lualine_z = {
--           { "location", separator = { right = "" }, left_padding = 3 },
--         },
--       },
--     })
--   end,
-- }

return {
  priority = 1000,
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    {
      "linrongbin16/lsp-progress.nvim",
      opts = {
        format = function(client_messages)
          local api = require("lsp-progress.api")
          local lsp_clients = #api.lsp_clients()
          if #client_messages > 0 then
            return table.concat(client_messages, " ")
          elseif lsp_clients > 0 then
            return "󰄳 LSP " .. lsp_clients .. " clients"
          end
          return ""
        end,
      },
    },
  },
  cond = function()
    return os.getenv("PRESENTATION") ~= "true"
  end,
  config = function()
    vim.api.nvim_create_augroup("lualine_augroup", { clear = true })
    vim.api.nvim_create_autocmd("User", {
      group = "lualine_augroup",
      pattern = "LspProgressStatusUpdated",
      callback = require("lualine").refresh,
    })

    require("lualine").setup({
      options = {
        disabled_filetypes = {
          statusline = { "alpha", "NvimTree", "trouble" },
        },
        theme = GetGooseLuaLineTheme(),
        component_separators = "|",
        section_separators = "",
      },
      sections = {
        lualine_a = {
          {
            "mode",
            fmt = function(str)
              -- Define single-letter mode mappings
              local mode_map = {
                ["NORMAL"] = "NR",
                ["INSERT"] = "IN",
                ["VISUAL"] = "VV",
                ["V-LINE"] = "VL",
                ["V-BLOCK"] = "VB",
                ["REPLACE"] = "RP",
                ["COMMAND"] = "CM",
                ["TERMINAL"] = "TR",
                ["SELECT"] = "SL",
              }
              -- Return the mapped single letter or first letter if not found
              return mode_map[str] or str:sub(1, 1)
            end,
          },
        },
        lualine_c = {
          function()
            -- invoke `progress` here.
            return require("lsp-progress").progress()
          end,
        },
        lualine_x = { "filetype" },
        lualine_y = {},
        lualine_z = { { "os.date('󰅐 %H:%M')" } },
      },
    })
  end,
}
