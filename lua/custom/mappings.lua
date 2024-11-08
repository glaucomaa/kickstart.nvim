return {
  vim.keymap.set('n', '<leader>s', '<cmd>w<CR>', { desc = 'Save file' }),

  vim.keymap.set('i', 'jk', '<ESC>'),

  vim.keymap.set('n', 'n', 'nzzzv'),

  vim.keymap.set('n', 'N', 'Nzzzv'),
  vim.keymap.set('n', '<C-d>', '<C-d,>zz'),
  vim.keymap.set('n', '<C-u>', '<C-u>,zz'),
  vim.keymap.set('v', 'gg', 'gg0'),
  vim.keymap.set('v', 'G', 'G$'),

  vim.keymap.set('n', '<leader>rn', '<cmd>set invrelativenumber<CR>', { desc = 'Toggle relative number' }),

  vim.keymap.set('n', '<leader>cm', '<cmd>Compile<CR>', { desc = 'Compiler mode' }),
}
