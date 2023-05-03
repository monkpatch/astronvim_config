return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    incremental_selection = {
      enable = false,
      keymaps = {
        init_selection = "gnn", -- set to `false` to disable one of the mappings
        node_incremental = "grn",
        scope_incremental = "grc",
        node_decremental = "grm",
      },
    }, -- ensure_installed = { "lua" },
  },
}
