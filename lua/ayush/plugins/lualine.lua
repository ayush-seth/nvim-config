local ll_status, ll = pcall(require, "lualine")
if not ll_status then
    print "lualine not found"
    return
end

ll.setup({
    extensions = { 'nvim-tree' }
})
