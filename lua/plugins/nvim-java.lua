return {
    "nvim-java/nvim-java",
    config = function ()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        require('java').setup()
        require('lspconfig').jdtls.setup({
            -- Make sure to export this for lombok to work
            -- You will need to confirm where the lombok.jar file is
            -- export JDTLS_JVM_ARGS="-javaagent:$HOME/.local/share/nvim/mason/share/lombok-nightly/lombok.jar"
            capabilities = capabilities,
        })

        vim.keymap.set('n', '<leader>jb', ':JavaBuildBuildWorkspace<CR>', {})
        vim.keymap.set('n', '<leader>jr', ':JavaTestRunCurrentMethod<CR>', {})
        vim.keymap.set('n', '<leader>jd', ':JavaTestDebugCurrentMethod<CR>', {})
        vim.keymap.set('n', '<leader>jt', ':JavaTestViewLastReport<CR>', {})
    end,
}
