return {
	"folke/flash.nvim",
	event = "VeryLazy",
	---@type Flash.Config
	opts = {
		label = {
			rainbow = {
				enabled = true,
				shade = 5,
			},
		},
		-- search = {
		-- 	forward = true,
		-- 	multi_window = false,
		-- 	wrap = false,
		-- 	incremental = true,
		-- },
	},
  -- stylua: ignore
  keys = {
    { "<CR>", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "<S-CR>", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}
