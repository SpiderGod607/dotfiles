return {
    "reedes/vim-lexical",
    config = function()
        -- Initialize vim-lexical for all file types
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "*",
            callback = function()
                vim.cmd("call lexical#init()")
            end,
        })
    end,
}

