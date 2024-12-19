return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        buffers = {
            follow_current_file = {
                enabled = true,
            },
            hijack_netrw_behavior = "open_default",
        },
    },

    keys = {
        { "<leader>e", "<Cmd>Neotree reveal toggle current<CR>", desc = "reveal NeoTree" },
        { "<leader>b", "<Cmd>Neotree buffers toggle current<CR>", desc = "reveal buffers" },
    },
}
