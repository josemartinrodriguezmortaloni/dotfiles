return {
  -- Plugin: fzf-lua
  -- URL: https://github.com/ibhagwan/fzf-lua
  -- Description: A command-line fuzzy finder written in Lua.
  "ibhagwan/fzf-lua",
  cmd = "FzfLua",
  opts = function(_)
    local actions = require("fzf-lua.actions")

    return {
      files = {
        cwd_prompt = false,
        actions = {
          ["ctrl-i"] = { actions.toggle_ignore },
          ["ctrl-h"] = { actions.toggle_hidden },
        },
      },
      grep = {
        actions = {
          ["ctrl-i"] = { actions.toggle_ignore },
          ["ctrl-h"] = { actions.toggle_hidden },
        },
      },
    }
  end,
}
