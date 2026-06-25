local colors = {
  bg = '#021c1c',
  fg = '#d3b58d',

  black = '#0b3131',
  red = '#c4746e',
  green = '#8a9a5b',
  yellow = '#c7a86d',
  blue = '#6d8dad',
  magenta = '#9a7aa0',
  cyan = '#5f9ea0',
  white = '#d3b58d',

  gray = '#5f6f6f',
  darkgray = '#123838',
  cursor = '#f0d8b0',
  visual = '#184444',
  gutter = '#0d2f2f',
}

vim.cmd 'highlight clear'
if vim.fn.exists 'syntax_on' then vim.cmd 'syntax reset' end

vim.o.termguicolors = true

local set = vim.api.nvim_set_hl

-- UI
set(0, 'Normal', { fg = colors.fg, bg = colors.bg })
set(0, 'NormalFloat', { fg = colors.fg, bg = colors.black })
set(0, 'CursorLine', { bg = colors.darkgray })
set(0, 'CursorColumn', { bg = colors.darkgray })
set(0, 'Visual', { bg = colors.visual })
set(0, 'LineNr', { fg = colors.gray })
set(0, 'CursorLineNr', { fg = colors.yellow, bold = true })
set(0, 'SignColumn', { bg = colors.bg })
set(0, 'VertSplit', { fg = colors.darkgray })
set(0, 'StatusLine', { fg = colors.fg, bg = colors.darkgray })
set(0, 'StatusLineNC', { fg = colors.gray, bg = colors.black })
set(0, 'Pmenu', { fg = colors.fg, bg = colors.black })
set(0, 'PmenuSel', { fg = colors.bg, bg = colors.yellow })

-- Syntax
set(0, 'Comment', { fg = colors.gray, italic = true })
set(0, 'Constant', { fg = colors.cyan })
set(0, 'String', { fg = colors.green })
set(0, 'Character', { fg = colors.green })
set(0, 'Number', { fg = colors.yellow })
set(0, 'Boolean', { fg = colors.yellow })

set(0, 'Identifier', { fg = colors.blue })
set(0, 'Function', { fg = colors.blue, bold = true })

set(0, 'Statement', { fg = colors.red })
set(0, 'Conditional', { fg = colors.red })
set(0, 'Repeat', { fg = colors.red })
set(0, 'Keyword', { fg = colors.magenta })
set(0, 'Operator', { fg = colors.fg })

set(0, 'Type', { fg = colors.yellow })
set(0, 'Special', { fg = colors.cyan })
set(0, 'Todo', { fg = colors.bg, bg = colors.yellow, bold = true })

-- Diagnostics
set(0, 'DiagnosticError', { fg = colors.red })
set(0, 'DiagnosticWarn', { fg = colors.yellow })
set(0, 'DiagnosticInfo', { fg = colors.blue })
set(0, 'DiagnosticHint', { fg = colors.cyan })
