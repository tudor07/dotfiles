local map = require("utils").map

-- There are some more LSP specific mappings in lsp folder

-- Telescope keymaps
map("n", "<C-p>", "<cmd>Telescope find_files<cr>", { silent = true })
map("n", "<C-f>", "<cmd>Telescope live_grep<cr>", { silent = true })
-- (f)ind (b)uffers
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { silent = true })
-- (f)ind (h)elp
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { silent = true })

-- Telescope + LSP
-- see symbols
map("n", "<C-s>", "<cmd>Telescope lsp_document_symbols<cr>", { silent = true })
-- (f)ind (r)eferences
map("n", "<leader>fr", "<cmd>Telescope lsp_references<cr>", { silent = true })

-- Buffers
-- (k)ill all (b)uffers except current one
map("n", "<leader>kb", "<cmd>BufferLineCloseOthers<cr>", { silent = true })
-- (c)lose current (b)uffer (while keeping the window)
map("n", "<leader>cb", "<cmd>bp <bar> sp <bar> bn <bar> bd <cr>", { silent = true })

-- NvimTree
-- (t)oggle Nvim(T)ree
map("n", "<leader>tt", "<cmd>NvimTreeToggle<cr>", { silent = true })
-- (f)ind (f)iles
map("n", "<leader>ff", "<cmd>NvimTreeFindFile<cr>", { silent = true })

-- (g)it (b)lame
map("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<cr>", { silent = true })

-- Debug
-- (t)oggle (b)reakpoint
vim.keymap.set('n', '<leader>tb', ':lua require("dap").toggle_breakpoint()<CR>')
-- (d)ebug (c)ontinue
vim.keymap.set('n', '<leader>dc', ':lua require("dap").continue()<CR>')
-- (d)ebug step (o)ver
vim.keymap.set('n', '<leader>do', ':lua require("dap").step_over()<CR>')
-- (d)ebug step (i)nside
vim.keymap.set('n', '<leader>di', ':lua require("dap").step_ito()<CR>')
-- (d)ebug (e)val
vim.keymap.set('v', '<leader>de', 'lua require("dapui").eval()<CR>')

