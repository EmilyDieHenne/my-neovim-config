-- stolen from lazyvim, im not sure why this works
-- thanks folke
local function get_pkg_path(pkg, path, opts)
    pcall(require, "mason") -- make sure Mason is loaded. Will fail when generating docs
    local root = vim.env.MASON or (vim.fn.stdpath("data") .. "/mason")
    opts = opts or {}
    opts.warn = opts.warn == nil and true or opts.warn
    path = path or ""
    local ret = root .. "/packages/" .. pkg .. "/" .. path
    print("hi")
    if opts.warn and not vim.loop.fs_stat(ret) and not require("lazy.core.config").headless() then
        M.warn(
            ("Mason package path not found for **%s**:\n- `%s`\nYou may need to force update the package."):format(
                pkg,
                path
            )
        )
    end
    return ret
end
return {
    filetypes = {
        "javascript",
        "javascriptreact",
        "javascript.jsx",
        "typescript",
        "javascript.cjs",
        "typescriptreact",
        "typescript.tsx",
        "vue",
    },
    settings = {
        vtsls = {
            complete_function_calls = true,
            tsserver = {
                globalPlugins = {
                    {
                        name = "@vue/typescript-plugin",
                        location = get_pkg_path("vue-language-server", "/node_modules/@vue/language-server"),
                        languages = { "vue" },
                        configNamespace = "typescript",
                        enableForWorkspaceTypeScriptVersions = true,
                    },
                },
            },
        },
        typescript = {
            updateImportsOnFileMove = { enabled = "always" },
            suggest = {
                completeFunctionCalls = true,
            },
            inlayHints = {
                enumMemberValues = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                variableTypes = { enabled = false },
            },
        },
    },
}
