return {

  {
    name = "格式化",
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

  { name = "separator" },

  {
    name = "  Lsp Actions",
    hl = "Exblue",
    items = "lsp",
  },

  { name = "separator" },

  {
    name = "复制",
    cmd = "%y+",
    rtxt = "y",
  },
  
  {
    name = "粘贴",
    cmd = "\"_d\"+P",
    rtxt = "p",
  },

  {
    name = "删除",
    cmd = "\"_x",
    rtxt = "<Delete>",
  },

  { name = "separator" },

  {
    name = "  打开终端",
    hl = "ExRed",
    cmd = function()
      local cwd = vim.fn.expand("%:p:h")
      local float_term = require("toggleterm.terminal").Terminal:new({
        dir = cwd,
        direction = "float",
        close_on_exit = true,
        hidden = true,
        float_opts = {
          border = "curved", -- 可选: "single", "double", "shadow", "rounded", "curved"
          width = 80,
          height = 20,
          winblend = 10,
        },
      })
      float_term:toggle()
    end,
    rtxt = "<leader>tf",
  },

  { name = "separator" },

  {
    name = "  颜色选择器",
    cmd = function()
      require("minty.huefy").open()
    end,
  },
}
