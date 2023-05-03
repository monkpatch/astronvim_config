-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    -- ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    -- ["<leader>bD"] = {
    --   function()
    --     require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
    --   end,
    --   desc = "Pick to close",
    -- },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    -- ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    ["<Leader>W"] = { "<CMD>wa!<CR>", desc = "Save all buffers" },
    ["<Leader>Q"] = { "<CMD>qa!<CR>", desc = "Force quit all" },
    ["<Leader>x"] = { "<Leader>w<Leader>c", desc = "Save buffer and close", remap = true },
    ["<Leader>X"] = { "<Leader>W<Leader>Q", desc = "Save all buffers and quit", remap = true },
    ["<Leader>bX"] = { "<Leader>W<Leader>C", desc = "Save and close all buffers", remap = true },

    ["J"] = { "5j", desc = "Move down fast" },
    ["K"] = { "5k", desc = "Move up fast" },

    ["<Leader>j"] = { "mzJ`z", desc = "Join lines" },

    ["<C-d>"] = { "<C-d>zz", desc = "Mode down" },
    ["<C-u>"] = { "<C-u>zz", desc = "Move up" },

    ["n"] = { "nzzzv", desc = "Next match" },
    ["N"] = { "Nzzzv", desc = "Previous match" },

    ["L"] = { "]b", desc = "Next buffer", remap = true },
    ["H"] = { "[b", desc = "Previous buffer", remap = true },

    ["<M-j>"] = { "V:m '>+1<CR>gv=gv<Esc>", desc = "Move line down" },
    ["<M-k>"] = { "V:m '<-2<CR>gv=gv<Esc>", desc = "Move line up" },

    ["<Leader>d"] = { [["dd]], desc = "Delete without saving to buffer" },
    ["<Leader>D"] = { [["dD]], desc = "Delete without saving to buffer" },

    ["c"] = { [["cc]], desc = "Change without saving to buffer" },
    ["C"] = { [["cC]], desc = "Change without saving to buffer" },

    ["x"] = { [["xx]], desc = "Cut without saving to buffer" },
    ["X"] = { [["xX]], desc = "Cut without saving to buffer" },

    ["<M-x>"] = { "<C-w>x", desc = "Swap window with next" },
    ["<M-r>"] = { "<C-w>r", desc = "Rotate windows" },

    ["<Leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], desc = "Replace all occurences of the word under the cursor" },

    -- ["m"] = { "]m", desc = "Next method" },
    -- ["M"] = { "[m", desc = "Previous method" },
  },
  v = {
    ["<Leader>p"] = { [["rdP]], desc = "Replace" },

    ["<Leader>d"] = { [["dd]], desc = "Delete without saving to buffer" },
    ["<Leader>D"] = { [["dD]], desc = "Delete without saving to buffer" },

    ["<Leader>x"] = { [["xx]], desc = "Cut without saving to buffer" },
    ["<Leader>X"] = { [["xX]], desc = "Cut without saving to buffer" },

    ["c"] = { [["cc]], desc = "Change without saving to buffer" },
    ["C"] = { [["cC]], desc = "Change without saving to buffer" },

    ["J"] = { "5j", desc = "Move down fast" },
    ["K"] = { "5k", desc = "Move up fast" },

    ["<M-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move lines down" },
    ["<M-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move lines up" },

    ["<Leader>s"] = { [["vy:%s/\<<C-r>v\>/<C-r>v/gI<Left><Left><Left>]], desc = "Replace all occurences of the selected words" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
    -- ["<Esc>"] = { function() vim.cmd("stopinsert") end, desc = "Normal mode in terminal" }
    ["<M-Esc>"] = { "<CMD>stopinsert<CR>", desc = "Normal mode in terminal" },
    -- ["<Esc>"] = { "<Esc>", desc = "Escape key remap" },
  },
}
