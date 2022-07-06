local map = require("utils").map

require("telescope").setup {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown { }
    }
  }
}

require("telescope").load_extension("ui-select")
require("telescope").load_extension("dap")

map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { silent = true })
map("n", "<C-f>", "<cmd>Telescope live_grep<cr>", { silent = true })
map("n", "<C-s>", "<cmd>Telescope lsp_document_symbols<cr>", { silent = true })

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { silent = true })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { silent = true })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { silent = true })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { silent = true })
