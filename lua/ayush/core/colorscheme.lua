local cs_status, _ = pcall(vim.cmd, "colorscheme kanagawa")
if not cs_status then
  return
end
