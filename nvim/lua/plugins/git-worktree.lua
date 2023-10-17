return {
  "ThePrimeagen/git-worktree.nvim",
  keys = {
    {
      "<leader>gL",
      "<cmd>:lua require('telescope').extensions.git_worktree.git_worktrees()<CR>",
      desc = "Switch and Delete a worktrees",
    },
    {
      "<leader>gA",
      "<cmd>:lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>",
      desc = "Create a worktrees",
    },
  },
}
