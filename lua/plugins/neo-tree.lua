-- ==========================================
-- Neo-tree configuration
-- ==========================================

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    lazy = false,
    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        filesystem = {
          follow_current_file = { enabled = true },
          use_libuv_file_watcher = true,
          filtered_items = {
            visible = true,         -- Show hidden items by default
            hide_dotfiles = false,  -- Show dotfiles (.config, .env, etc.)
            hide_gitignored = false -- Show files ignored by .gitignore
          },
        },
      })

      -- Keymap: toggle Neo-tree
      vim.keymap.set("n", "<leader>n", ":Neotree toggle<CR>", { desc = "Toggle file explorer" })

    end,
  }
}
