local cmd = vim.cmd
local filetype = vim.filetype

filetype.add {
  extension = {
    png = 'image',
    jpg = 'image',
    jpeg = 'image',
    gif = 'image',
    es6 = 'javascript',
  },
  filename = {
    ['.eslintrc'] = 'json',
    ['.prettierrc'] = 'json',
    ['.babelrc'] = 'json',
    ['.stylelintrc'] = 'json',
  },
  pattern = {
    ['.*config/git/config'] = 'gitconfig',
    ['.env.*'] = 'sh',
  },
}

cmd([[
	filetype indent plugin on
	syntax enable
]])
cmd([[ au BufEnter * set fo-=c fo-=r fo-=o ]])
cmd([[ autocmd FileType text,markdown,html,xhtml,javascript setlocal cc=0 ]])
cmd([[
	autocmd FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=blinkon250
	autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2
	autocmd FileType javascriptreact setlocal tabstop=2 shiftwidth=2 softtabstop=2
	autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2
	autocmd FileType lua setlocal tabstop=2 shiftwidth=2 softtabstop=2
]])
cmd([[
  augroup mygroup
    autocmd!
    autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
    autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end
]])
cmd([[
  " Add `:Format` command to format current buffer.
  command! -nargs=0 Format :call CocActionAsync('format')
]])
