return {
  "echasnovski/mini.indentscope",
  init = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy", "mason", "nvdash", "nvcheatsheet" },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })
  end,
}
