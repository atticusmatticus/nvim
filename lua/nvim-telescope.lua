local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup({
    defaults = {
        mappings = {
            i = {
                ["<C-j>"] = {
                    actions.move_selection_next,
                    type = "action",
                    opts = { nowait = true, silent = true }
                },
                ["<C-k>"] = {
                    actions.move_selection_previous,
                    type = "action",
                    opts = { nowait = true, silent = true }
                },
            },
        },
        -- layout_strategy = "center",
        -- layout_strategy = "bottom_pane",
        -- sorting_strategy = "ascending",
        -- prompt_position = "top",
    },
    extensions = {
        fzf = {
            fuzzy = true, -- false will only do exact matching
            -- override_generic_sorter = true, -- override the generic sorter
            -- override_file_sorter = true,    -- override the file sorter
            -- case_mode = "smart_case",       -- or "ignore_case" or "respect_case"
        },
    }
})

telescope.load_extension('fzf')
