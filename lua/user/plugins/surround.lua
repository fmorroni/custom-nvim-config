return {
	{
	    "kylechui/nvim-surround",
	    config = function()
	      require("nvim-surround").setup({
		keymaps = {
		  insert = "<C-g>q",
		  insert_line = "<C-g>Q",
		  normal = "yq",
		  normal_cur = "yqq",
		  normal_line = "yQ",
		  normal_cur_line = "yQQ",
		  visual = "Q",
		  visual_line = "gQ",
		  delete = "dq",
		  change = "cq",
		}
	      })
	    end,
	}
}
