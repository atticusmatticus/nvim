local home = "~/zettelkasten" -- home directory for telekasten

local function expand_path(subdir)
    return vim.fn.expand(home .. (subdir and '/' .. subdir or '')) -- allow for optional subdir
end

require("telekasten").setup({
    home = expand_path(),                                         -- home zettelkasten directory

    templates = expand_path("templates"),                         -- directory for templates
    template_new_note = expand_path("templates/new_note.md"),     -- template for new notes
    template_new_daily = expand_path("templates/new_daily.md"),   -- template for new dailies
    template_new_weekly = expand_path("templates/new_weekly.md"), -- template for new weeklies

    dailies = expand_path("daily"),                               -- directory for daily notes
    weeklies = expand_path("weekly"),                             -- directory for weekly notes
    image_subdir = "img",                                         -- subdirectory for images

    new_note_filename = "title",                                  -- new note filename format

    rename_update_links = true,                                   -- update links when renaming a note

    tklink = {                                                    -- link style
        style = "markdown",                                       -- wiki or markdown
        name_is_slug = true,                                      -- use filename as link text
    },
})

-- Highlighting for [[links]] line 550
vim.api.nvim_exec([[
    hi tklink           gui=none            guifg=#9180f7    	guibg=none
    hi tkBrackets       gui=bold            guifg=#00ff00       guibg=#393649
    hi tkHighlight      gui=bold            guifg=#444156	    guibg=#feffa5
    hi tkTag            gui=bold,italic     guifg=#a0fcea	    guibg=#444156
    hi tkAliasedLink    gui=none            guifg=none	        guibg=#393649
]], false)
