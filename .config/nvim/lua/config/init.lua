require("config.remap")
require("config.set")
require("config.packer")

vim.lsp.enable('gopls')
vim.cmd[[colorscheme nord]]

-- Move Undodir
local undodir = vim.fn.expand("~/.local/share/vim/undodir")

-- Create the undo directory if it doesn't exist
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, "p")
end

