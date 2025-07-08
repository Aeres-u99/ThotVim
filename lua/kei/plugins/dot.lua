return {
  'izocha/graphviz.nvim',
  ft = { 'dot' },
  config = function()
    require('graphviz').setup({
      format = 'png',
      preview = 'png',
      viewer = 'viewnior',
    })

    -- Auto-preview after saving the file
    vim.api.nvim_create_autocmd('BufWritePost', {
      pattern = '*.dot',
      callback = function()
        vim.cmd('GraphPreview')
      end,
    })
  end,
}

