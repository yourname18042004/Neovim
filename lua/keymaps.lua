local keymap = vim.keymap

keymap.set('n', 'x', '"_x')

keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

keymap.set('n', 'dw', 'vb"_d')

--select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

--new table
keymap.set('n', 'te', ':tabedit<return>', { silent = true })
keymap.set('n', 'ss', ':split<return><c-w>w', { silent = true })
keymap.set('n', 'sv', ':vsplit<return><c-w>w', { silent = true })

-- move window
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

keymap.set('', 's<left>', '<C-w>h')
keymap.set('', 's<up>', '<C-w>k')
keymap.set('', 's<down>', '<C-w>j')
keymap.set('', 's<right>', '<C-w>l')


keymap.set( 'n', "<Tab>", "gt" )
 keymap.set( 'n', "<S-Tab>", "gT" )
--resize
keymap.set('n', 'rsh', '<C-w><')
keymap.set('n', 'rsl', '<C-w>>')
keymap.set('n', 'rsk', '<C-w>+')
keymap.set('n', 'rsj', '<C-w>-')
