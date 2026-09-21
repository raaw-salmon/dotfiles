vim.opt.number = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.showtabline = 4
vim.opt.winborder = "rounded"
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.cursorline = true

vim.g.mapleader = " "

vim.pack.add({
    { src = "https://github.com/ellisonleao/gruvbox.nvim" },
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main", },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
    { src = "https://github.com/nvim-lualine/lualine.nvim" },
    { src = "https://github.com/chentoast/marks.nvim" },
    { src = "https://github.com/Saghen/blink.lib" },
    { src = "https://github.com/Saghen/blink.cmp" },
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
})

vim.api.nvim_create_autocmd("FileType", {
    callback = function()
        pcall(vim.treesitter.start)
    end,
})

vim.cmd("colorscheme gruvbox")

require("ibl").setup()

require("lualine").setup()

require("marks").setup({
    mappings = {
        set_next = "m,",
        next = "m]",
        preview = "m:",
        set_bookmark0 = "m0",
        prev = false,
    },
})

--require("blink.cmp").build():wait()
require("blink.cmp").setup({
    sources = {
        default = {
            "lsp",
            "path",
            "buffer",
        },
    },
})

require("telescope").setup({})

local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff", builtin.find_files, {
    desc = "Find files",
})

vim.keymap.set("n", "<leader>fg", builtin.live_grep, {
    desc = "Live grep",
})
 
