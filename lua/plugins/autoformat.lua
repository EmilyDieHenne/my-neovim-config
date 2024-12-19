return {
    "stevearc/conform.nvim",
    opts = {
        notify_on_error = false,
        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
        formatters_by_ft = {
            lua = { "stylua" },
            javascript = { "prettierd", "prettier" },
            typescript = { "prettierd", "prettier" },
            vue = { "prettierd", "prettier" },
            rust = { "rust_analyzer", "rustfmt" },
            c_sharp = { "csharpier" },
        },
    },
}
