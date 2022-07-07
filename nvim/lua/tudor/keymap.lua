local map = require("utils").map

-- There are some more LSP specific mappings in lsp folder

-- Telescope keymaps
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { silent = true })
map("n", "<C-f>", "<cmd>Telescope live_grep<cr>", { silent = true })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { silent = true })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { silent = true })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { silent = true })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { silent = true })

-- Telescope + LSP
-- see symbols
map("n", "<C-s>", "<cmd>Telescope lsp_document_symbols<cr>", { silent = true })
-- (f)ind (r)eferences
map("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", { silent = true })

-- Buffers
-- (c)lose all (b)uffers except current one
map("n", "<leader>cb", "<cmd>%bd <bar> e# <bar> bd# <cr>", { silent = true })

-- NvimTree
-- (t)oggle Nvim(T)ree
map("n", "<leader>tt", "<cmd>NvimTreeToggle<cr>", { silent = true })
