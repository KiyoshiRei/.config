return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function () 
		local configs = require("nvim-treesitter.configs")

	      	configs.setup({
		ensure_installed = { "c", "lua", "vim", "vimdoc", "rust", "go", "cpp", "javascript", "html" },
		sync_install = false,
		highlight = { enable = true },
		indent = { enable = true },  
	})
      -- ### telescope binds

      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
      vim.keymap.set('n', '<leader>fh', builtin.help_tags,{})
	end
}
