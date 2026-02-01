local M  = {}

M.defaults = {
  provider = "rss",
  user_agent = "nvim:reddit.nvim:0.0.1",
  default_subreddit = "neovim",
  limit = 10,
}

function M.merge(user)
  return vim.tbl_deep_extend("force", {}, M.defaults, user or {})
end

return M
