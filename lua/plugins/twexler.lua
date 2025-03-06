return {
  {
    "KeitaNakamura/neodark.vim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[ colorscheme neodark ]])
    end,
  },
  {
    "nvim-neotest/neotest",
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-golang")({
            runner = "gotestsum",
          }),
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      format = { timeout_ns = 5000 },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      default_format_opts = {
        timeout_ms = 300000,
      },
    },
  },
}
