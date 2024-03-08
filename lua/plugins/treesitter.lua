return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "astro",
        "cmake",
        "cpp",
        "fish",
        "gitignore",
        "go",
        "graphql",
        "http",
        "javascript",
        "typescript",
        "typoscript",
        "java",
        "dockerfile",
        "json",
        "prisma",
        "sql",
        "scss",
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      -- MDX
      vim.filetype.add({
        extension = {
          mdx = "mdx",
        },
      })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
