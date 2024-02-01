return {
  "cbochs/grapple.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local grapple = require("grapple")
    -- REQUIRED
    vim.keymap.set("n", "<leader>ha", function()
      grapple.tag()
    end)
    vim.keymap.set("n", "<leader>hm", ":GrapplePopup tags<cr>")
    vim.keymap.set("n", "<leader>hX", function()
      require("grapple").reset()
    end)
    vim.keymap.set("n", "<leader>hx", function()
      require("grapple").untag()
    end)

    vim.keymap.set("n", "<leader>hi", function()
      require("grapple").quickfix()
    end)

    vim.keymap.set("n", "<leader>h1", function()
      grapple.select({ key = 1 })
    end)
    vim.keymap.set("n", "<leader>h2", function()
      grapple.select({ key = 2 })
    end)
    vim.keymap.set("n", "<leader>h3", function()
      grapple.select({ key = 3 })
    end)
    vim.keymap.set("n", "<leader>h4", function()
      grapple.select({ key = 4 })
    end)
    vim.keymap.set("n", "<leader>h5", function()
      grapple.select({ key = 5 })
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<Left>", function()
      grapple.cycle_backward()
    end)
    vim.keymap.set("n", "<Right>", function()
      grapple.cycle_forward()
    end)
  end,
}
