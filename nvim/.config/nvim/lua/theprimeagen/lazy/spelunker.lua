return {
    "kamykn/spelunker.vim",
    lazy = false,                                -- Load the plugin immediately
    config = function()
        vim.g.spelunker_check_type = 2           -- Check both comments and code
        vim.g.spelunker_highlight_type = 1       -- Underline misspelled words
        vim.g.spelunker_spell_bad_group = "SpellBad"
        vim.g.spelunker_spell_bad_priority = 100 -- Adjust highlight priority
    end,
    dependencies = {
    },
}
