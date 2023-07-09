local M = {}

--These are the mappings to work in tmux in vim mode
M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },
  },
  i = {
    ["fd"] = {
      "<ESC>",
      "escape insert mode",
      opts = { nowait = true },
    }
  }
}

return M
