return {
    "ThePrimeagen/harpoon",
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        -- Key mappings for Harpoon functionality
        vim.keymap.set("n", "<leader>hm", function() require('harpoon.mark').add_file() end,
            { desc = "Mark file with harpoon" })
        vim.keymap.set("n", "<leader>hn", function() require('harpoon.ui').nav_next() end,
            { desc = "Go to next harpoon mark" })
        vim.keymap.set("n", "<leader>hp", function() require('harpoon.ui').nav_prev() end,
            { desc = "Go to previous harpoon mark" })
        vim.keymap.set("n", "<leader>ha", function() require('harpoon.ui').toggle_quick_menu() end,
            { desc = "Show harpoon marks" })

        local harpoon_ui = require('harpoon.ui')
        -- Navigate to the marked files using Harpoon
        vim.keymap.set("n", "<leader>hq", function() harpoon_ui.nav_file(1) end, { desc = "Go to Harpoon mark 1" })
        vim.keymap.set("n", "<leader>hw", function() harpoon_ui.nav_file(2) end, { desc = "Go to Harpoon mark 2" })
        vim.keymap.set("n", "<leader>he", function() harpoon_ui.nav_file(3) end, { desc = "Go to Harpoon mark 3" })
        vim.keymap.set("n", "<leader>hr", function() harpoon_ui.nav_file(4) end, { desc = "Go to Harpoon mark 4" })
    end,
}
