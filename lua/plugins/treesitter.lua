return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        install = {
            compilers = { "clang", "gcc" },
        },
        configs = {
            auto_install = true,
            ensure_installed = {
                "lua",
                "luadoc",
                "vim",
                "vimdoc",
                "query",
                "javascript",
                "html",
                "vue",
                "css",
                "rust",
            },
            ignore_install = { "help" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
            modules = {},
        },
    },
}
