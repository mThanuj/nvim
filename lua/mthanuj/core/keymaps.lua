vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "<ESC>", "<ESC>l", { desc = "QOL" })
keymap.set("n", "<ESC>", "<CMD>nohl<CR>", { desc = "Clear Search Highlights" })
keymap.set("n", "<C-b>", "^", { desc = "Go to the beginning of the line" })
keymap.set("n", "<C-e>", "$", { desc = "Go to the end of the line" })

keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" })
keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" })
keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })

keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Find todos" })
keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Find Keymaps" })

keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" }) -- restore last workspace session for current directory
keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" }) -- save workspace session for current working directory

keymap.set("n", "<leader>bo", "<CMD>BufferLineCloseOthers<CR>", { desc = "Delete Other Buffers" })
keymap.set("n", "H", "<CMD>BufferLineCyclePrev<CR>", { desc = "Cycle to Previous Buffer" })
keymap.set("n", "L", "<CMD>BufferLineCycleNext<CR>", { desc = "Cycle to Next Buffer" })
keymap.set("n", "<leader>bp", "<CMD>BufferLinePick<CR>", { desc = "Pick a Specific Buffer" })
keymap.set("n", "<leader>bc", "<CMD>BufferLinePickClose<CR>", { desc = "Pick a Specific Buffer to Close" })
keymap.set("n", "<leader>bd", "<CMD>bdelete<CR>", { desc = "Delete Current Buffer" })

keymap.set("n", "<leader>dt", "<CMD>DapToggleBreakpoint<CR>", { desc = "Toggle Breakpoint" })
keymap.set("n", "<leader>dc", "<CMD>DapContinue<CR>", { desc = "Continue Debugging" })

keymap.set("n", "<leader>rr", ":RunCode<CR>", { noremap = true, silent = false })
keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
