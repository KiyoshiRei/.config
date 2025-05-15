return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
-- ### neo-tree binds
    config = function()
      vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>', {})
      vim.keymap.set('n', '<leader>o', function()
          if vim.bo.filetype == "neo-tree" then
            vim.cmd("wincmd p")  -- Go back to the previous window
          else
            vim.cmd("Neotree focus")  -- Focus Neo-tree window
          end
    end, { noremap = true, silent = true })
  end
}
