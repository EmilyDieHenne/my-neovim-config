require("emily.remap")
require("emily.set")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = "plugins" }
})


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

require('mason').setup()
require('mason-lspconfig').setup {
    ensure_installed = { "lua_ls", "omnisharp", "tsserver" }
}

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup {
    format = {
        enable = true,
        defaultConfig = {
            indent_style = "space",
            indent_size = "4",
        }
    },
}
lspconfig.eslint.setup({
    on_attach = function(client, bufnr)
        vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
        })
    end,
})
lspconfig.vimls.setup {}
