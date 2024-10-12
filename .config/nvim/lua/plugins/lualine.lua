return {
  "nvim-lualine/lualine.nvim",
  config = function()
    -- Require the necessary modules
local lualine = require('lualine')

-- Set Kanagawa colors
local colors = {
    bg = '#1f1f28',
    fg = '#dcd7ba',
    yellow = '#ff9e3b',
    cyan = '#6a9589',
    darkblue = '#223249',
    green = '#98bb6c',
    orange = '#fa7c61',
    violet = '#957fb8',
    magenta = '#c678dd',
    blue = '#7fb4ca',
    red = '#e46876'
}

-- Define Kanagawa lualine theme
local kanagawa_theme = {
    normal = {
        a = { fg = colors.bg, bg = colors.violet, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.darkblue },
        c = { fg = colors.fg, bg = colors.bg },
    },
    insert = {
        a = { fg = colors.bg, bg = colors.green, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.darkblue },
        c = { fg = colors.fg, bg = colors.bg },
    },
    visual = {
        a = { fg = colors.bg, bg = colors.magenta, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.darkblue },
        c = { fg = colors.fg, bg = colors.bg },
    },
    replace = {
        a = { fg = colors.bg, bg = colors.red, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.darkblue },
        c = { fg = colors.fg, bg = colors.bg },
    },
    command = {
        a = { fg = colors.bg, bg = colors.yellow, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.darkblue },
        c = { fg = colors.fg, bg = colors.bg },
    },
    inactive = {
        a = { fg = colors.fg, bg = colors.bg, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.bg },
        c = { fg = colors.fg, bg = colors.bg },
    },
}

-- Setup lualine with the custom theme
lualine.setup {
    options = {
        theme = 'everforest',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {  },
        lualine_b = {  },
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {  },
        lualine_z = {  }
    },
    tabline = { },
    extensions = { }
}

  end,
}
