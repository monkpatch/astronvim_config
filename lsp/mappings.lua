return {
  n = {
    ["J"] = { "5j", desc = "Move down fast" },
    ["K"] = { "5k", desc = "Move up fast" },
    ["<Leader>lH"] = { function () vim.lsp.buf.hover() end, desc = "Hover symbol details" },
  }
}
