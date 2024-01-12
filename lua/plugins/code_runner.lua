return {
  {
    "CRAG666/code_runner.nvim",
    opts = {
      filetype = {
        java = {
          "cd $dir &&",
          "javac $fileName &&",
          "java $fileNameWithoutExt",
        },
        fish = "fish",
        bash = "bash",
        python = "python3 -u",
        typescript = "bun",
        javascript = "bun",
        reactjavascript = "bun",
        c = {
          "cdx $dir &&",
          "gcc $fileName",
          "-o $fileNameWithoutExt &&",
          "$dir/$fileNameWithoutExt",
        },
        typescriptreact = "bun",
        rust = "cargo run -q",
        markdown = {
          "slides",
        },
      },
    },
    keys = {
      { "<leader>r",  desc = "Code runner" },
      { "<leader>rr", ":RunCode<cr>",      desc = "run code" },
      { "<leader>rf", ":RunFile<cr>",      desc = "run file" },
      { "<leader>rp", ":RunProject<cr>",   desc = "run project" },
      { "<leader>rc", ":RunClose<cr>",     desc = "close" },
    },
  },
}
