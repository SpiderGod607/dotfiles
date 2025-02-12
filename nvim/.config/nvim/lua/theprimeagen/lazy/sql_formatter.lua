return {
    "ddzero2c/go-embedded-sql.nvim",
    config = function()
        vim.api.nvim_set_keymap('v', '<leader>ss', ':lua require("go-embedded-sql").format_sql_visual()<CR>',
            { noremap = true, silent = true })
        vim.api.nvim_set_keymap('n', '<leader>sf', ':lua require("go-embedded-sql").format_sql()<CR>',
            { noremap = true, silent = true })
    end,
}
