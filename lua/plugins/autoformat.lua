return {
  -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },

  keys = {
    {
      '<leader>f',
      function()
        require('conform').format {
          async = true,
          lsp_format = 'fallback',
        }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
    -- Toggle autoformat
    {
      '<leader>tf',
      function()
        vim.g.disable_autoformat = not vim.g.disable_autoformat

        if vim.g.disable_autoformat then
          vim.notify 'Autoformat disabled'
        else
          vim.notify 'Autoformat enabled'
        end
      end,
      desc = '[T]oggle auto[F]ormat',
    },
  },

  opts = {
    notify_on_error = false,

    format_on_save = function(bufnr)
      -- Global toggle
      if vim.g.disable_autoformat then return end

      local disable_filetypes = { c = true, cpp = true }

      local lsp_format_opt
      if disable_filetypes[vim.bo[bufnr].filetype] then
        lsp_format_opt = 'never'
      else
        lsp_format_opt = 'fallback'
      end

      return {
        timeout_ms = 500,
        lsp_format = lsp_format_opt,
      }
    end,

    formatters_by_ft = {
      lua = { 'stylua' },

      javascript = { 'prettier' },
      javascriptreact = { 'prettier' },
      html = { 'prettier' },
      css = { 'prettier' },
    },
  },
}
