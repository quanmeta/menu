return {

  {
    name = "Format",
    cmd = function()
      local ok, conform = pcall(require, "conform")

      if ok then
        conform.format { lsp_fallback = true }
      else
        vim.lsp.buf.format()
      end
    end,
    rtxt = ",F",
  },

  {
    name = "Code Actions",
    cmd = vim.lsp.buf.code_action,
    rtxt = "<leader>ca",
  },

  { name = "separator" },

  {
    name = "  Lsp Actions",
    hl = "Exblue",
    items = "lsp",
  },

  { name = "separator" },

  {
    name = "Copy",
    cmd = "%y+",
    rtxt = "<C-c>",
  },

  {
    name = "Delete",
    cmd = "%d",
    rtxt = "dc",
  },

  { name = "separator" },

  {
    name = "  Open in terminal",
    hl = "ExRed",
    cmd = vim.cmd( "ToggleTerm direction=vertical" ),
  },

  { name = "separator" },

  {
    name = "  Color Picker",
    cmd = function()
      require("minty.huefy").open()
    end,
  },
}
