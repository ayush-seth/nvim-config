local ll_status, ll = pcall(require, "lualine")
if not ll_status then
  return
end

local split = function(inputstr, sep)
  if sep == nil then
    sep = "%s"
  end
  local t = {}
  for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
    table.insert(t, str)
  end
  return t
end


local getRoot = function()
  local cwd = vim.fn.getcwd()
  cwd = split(cwd, "/")
  return cwd[#cwd]
end

ll.setup({
  extensions = { "nvim-tree" },
  options = {
    component_separators = "",
    section_separators = { left = "", right = "" },
    globalstatus = true
  },
  sections = {
    lualine_a = {
      {
        "mode",
        icon = "",
        color = { gui = "bold" }
      },
      {
        "[[ ]]",
        padding = 0,
        color = { bg = "#42464e" },
        separator = { right = "", left = "" },
      }
    },
    lualine_b = {
      {
        "filename",
        color = { bg = "#2d3139", fg = "#abb2bf" },
        separator = { right = "" },
        symbols = {
          modified = ""
        },
        padding = 2
      }
    },
    lualine_c = {
      {
        "branch",
        icon = "",
        color = { fg = "#888888", bg = "#1F1F28" },
        separator = { right = "" },
        padding = 2
      },
      {
        "diff",
        colored = false,
        color = { fg = "#888888", bg = "#1F1F28" },
        separator = { right = "" },
        symbols = { added = " ", modified = " ", removed = " " },
        padding = { right = 2 }
      }
    },
    lualine_x = { "diagnostics" },
    lualine_y = {
      {
        "[[ ]]",
        padding = 0,
        color = { bg = "#FF5D62", fg = "#2d3139" },
        separator = { left = "" }
      },
      {
        getRoot,
        color = { bg = "#2d3139", fg = "#abb2bf" },
      }
    },
    lualine_z = {
      {
        "[[ ]]",
        padding = 0,
        color = { bg = "#98BB6C" },
        separator = { left = "" }
      },
      {
        'progress',
        color = { bg = "#2d3139", fg = "#98BB6C" },
      }
    },
  }
})
