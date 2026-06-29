return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        local ts = require("nvim-treesitter")
        ts.setup()

        ts.install({
            "lua", "vim", "vimdoc", "query",
            "bash", "json", "jsonc", "yaml", "toml",
            "markdown", "markdown_inline",
            "python", "javascript", "typescript", "tsx",
            "html", "css", "c",
            "gdscript", "godot_resource", "gdshader",
        })

        vim.api.nvim_create_autocmd("FileType", {
            callback = function(args)
                local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)
                if not lang then
                    return
                end
                -- Only start when a parser is actually available, otherwise
                -- filetypes without a parser (e.g. "alpha") raise an error.
                pcall(vim.treesitter.start, args.buf, lang)
            end,
        })
    end,
}
