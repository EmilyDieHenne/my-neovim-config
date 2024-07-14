local M = {
    "nvim-neo-tree/neo-tree.nvim",
    cmd = "Neotree",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },

    config = function()
        require("neo-tree").setup({
            sync_root_with_cwd = true,
            respect_buf_cwd = true,
            update_focused_file = {
                enable = true,
                update_root = true,
            },
            filesystem = {

                bind_to_cwd = false,
                follow_current_file = { enabled = true },
                use_libuv_file_watcher = true,
                filtered_items = {
                    visible = true, -- when true, they will just be displayed differently than normal items
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_hidden = true, -- only works on Windows for hidden files/directories
                    hide_by_name = {
                        --"node_modules"
                    },
                },
            },
            default_component_configs = {
                window = {
                    position = "current",
                },
                indent = {
                    with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
                    expander_collapsed = "",
                    expander_expanded = "",
                    expander_highlight = "NeoTreeExpander",
                },
                git_status = {
                    symbols = {
                        unstaged = "󰄱",
                        staged = "󰱒",
                    },
                },
            },
        })
    end,
}

M.keys = {
    {
        "<leader>e",
        function()
            require("neo-tree.command").execute({
                toggle = true,
                position = "current",
                dir = vim.uv.cwd(),
            })
        end,
        desc = "Explorer NeoTree (cwd)",
    },

    {
        "<leader>b",
        function()
            require("neo-tree.command").execute({
                toggle = true,
                source = "buffers",
                position = "float",
                dir = vim.uv.cwd(),
            })
        end,
        desc = "Buffers",
    },
}

return M
