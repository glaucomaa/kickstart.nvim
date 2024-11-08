return {
  'folke/flash.nvim',
  event = 'VeryLazy',
  --@type Flash.Config
  opts = {
    modes = { char = { enabled = false } },
  },
    -- stylua: ignore
    keys = {
        {
            "<leader>j",
            mode = { "n", "o", "x" },
            function()
                require("flash").jump({
                    search = {
                        mode = function(str)
                            return "\\<" .. str
                        end,
                    },
                })
            end,
            desc = "Flash"
        },
        {
            "<leader>J",
            mode = { "n", "o", "x" },
            function()
                require("flash").treesitter({
                    search = {
                        mode = function(str)
                            return "\\<" .. str
                        end,
                    },
                })
            end,
            desc = "Flash Treesitter"
        },
        {
            "r",
            mode = "o",
            function()
                require("flash").remote({
                    remote_op = {
                        restore = true,
                        motion = true,
                    },
                })
            end,
            desc = "Remote Flash"
        },
        { "R",     mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        { "<c-s>", mode = { "c" },      function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
}
