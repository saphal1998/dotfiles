return {
        'olacin/telescope-cc.nvim',
        config = function()
                pcall(require('telescope').load_extension, 'conventional_commits')

                local function create_conventional_commit()
                        local actions =
                            require("telescope._extensions.conventional_commits.actions")
                        local picker =
                            require("telescope._extensions.conventional_commits.picker")

                        picker({
                                action = actions.prompt,
                                include_body_and_footer = true,
                        })
                end

                vim.keymap.set(
                        "n",
                        "cc",
                        create_conventional_commit,
                        { desc = "Create conventional commit" }
                )
        end
}
