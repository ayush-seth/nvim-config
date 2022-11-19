local ll_status, ll = pcall(require, "lualine")
if not ll_status then
    return
end

ll.setup({
    extensions = { 'nvim-tree' }
})
