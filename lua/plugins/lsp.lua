return {
    'neovim/nvim-lspconfig',
    dependencies = {
        { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
        { "folke/neodev.nvim",  opts = {} },
        "williamboman/mason-lspconfig.nvim",
        { 'williamboman/mason.nvim', config = true },

        { 'j-hui/fidget.nvim',       opts = {} },

    },
    config = function()
    end
}
