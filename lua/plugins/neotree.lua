return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    lazy = false,
    opts = {
        buffers = {
            follow_current_file = {
                enabled = true,
            },
            hijack_netrw_behavior = "open_default",
        },
    },

    keys = {
        {
            "<leader>e",
            function()
                require("neo-tree.command").execute({
                    toggle = true,
                    source = "filesystem",
                    position = "current",
                    reveal = true,
                })
            end,
            --"<Cmd>Neotree reveal toggle current<CR>",
            desc = "reveal NeoTree",
        },
        {
            "<leader>b",
            function()
                require("neo-tree.command").execute({
                    toggle = true,
                    source = "buffers",
                    position = "current",
                    reveal = true,
                })
            end,
            desc = "reveal buffers",
        },
    },
}
