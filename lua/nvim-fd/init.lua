local M = {}
local default_config = {
  options = {},
  command = "Fd"
}
local config = {}

function M.exec(opts)
  local old_grepprg = vim.o.grepprg
  local old_grepformat = vim.o.grepformat

  vim.o.grepprg = "fd " .. table.concat(config.options, " ")
  vim.o.grepformat = "%f"
  pcall(vim.cmd, "grep " .. opts.args)

  vim.o.grepprg = old_grepprg
  vim.o.grepformat = old_grepformat
end

function M.setup(user_config)
  config = vim.tbl_deep_extend("force", default_config, user_config or {})
  vim.api.nvim_create_user_command(config.command, M.exec, {
    nargs = "*",
    complete = "dir"
  })
end

return M
