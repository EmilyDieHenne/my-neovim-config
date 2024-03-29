local M = {
    'hrsh7th/nvim-cmp',
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        'L3MON4D3/LuaSnip',
    }
}

M.config = function()
    vim.opt.completeopt = "menu,menuone,noselect"

    local cmp = require('cmp')
    local luasnip = require('luasnip')

    cmp.setup({
        enabled = true,
        view = {},
        snippet = {
            expand = function(args)
                luasnip.lsp_expand(args.body)
            end,
        },
        mapping = cmp.mapping.preset.insert({
            ["<C-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
            ["<C-j>"] = cmp.mapping.select_next_item(), -- next suggestion
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(9),
            ["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
            ["<C-e>"] = cmp.mapping.abort(),        -- close completion window
            ["<CR>"] = cmp.mapping.confirm({ select = false }),
        }),
        -- sources for autocompletion
        sources = cmp.config.sources({
            { name = "nvim_lsp" }, -- LSP
            { name = "luasnip" },  -- snippets
            { name = "buffer" },
            { name = "path" },     -- file system paths
        }),
    })
end

return M
