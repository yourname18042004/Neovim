return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { 
                    "lua_ls", 
                    "csharp_ls",
                    "jdtls", 
                    "clangd",

                    -- Web development
                    "tsserver",
                    "html",
                    "cssls",
                    "tailwindcss",
                    "svelte",
                    "graphql",
                    "emmet_ls",
                    "prismals",
                    "pyright",
                                        
                },
                automatic_installation = true,
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({})
            lspconfig.csharp_ls.setup({})
            lspconfig.jdtls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.pyright.setup({})
            lspconfig["cmake"].setup({
                capabilities = capabilities,
                on_attach = on_attach,
                filetypes = { "cmake" },
                --init_options = { buildDirectory = "build" },
                --root_pattern('CMakePresets.json', 'CTestConfig.cmake', '.git', 'build', 'cmake');
            })
            lspconfig["html"].setup({
                capabilities = capabilities,
                on_attach = on_attach,
                filetypes = { "html", "jsp" }
            })
            lspconfig["tsserver"].setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })
            lspconfig["tailwindcss"].setup({
                capabilities = capabilities,
                on_attach = on_attach,
            })
            lspconfig["emmet_ls"].setup({
                capabilities = capabilities,
                on_attach = on_attach,
                filetypes = { "html", "jsp", "scss", "css", "js" }
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n'}, '<leader>ca', vim.lsp.buf.code_action, {})


        end,
    }
}
