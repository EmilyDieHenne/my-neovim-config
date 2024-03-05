local M = {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
}

M.config = function()
    require('neo-tree').setup({
        window = {
            position = "current",
        },
        default_component_configs = {
            git_status = {
                symbols = {
                    -- Change type
                    added     = "",
                    modified  = "",
                    deleted   = "x",
                    renamed   = "r",

                    -- Status type
                    untracked = "?",
                    ignored   = "",
                    unstaged  = "u",
                    staged    = "",
                    conflict  = "!",
                }
            },
        },
        nesting_rules = {},
        filesystem = {
            filtered_items = {
                visible = true,
                hide_dotfiles = false,
                hide_hidden = false,
                hide_by_name = {
                    "node_modules"
                },
            }
        },

    })
end

return M
