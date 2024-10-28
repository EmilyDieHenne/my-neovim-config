return {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    opts = { reduced_blue = false },
    config = function()
        vim.cmd([[colorscheme nordic]])
    end,
}
