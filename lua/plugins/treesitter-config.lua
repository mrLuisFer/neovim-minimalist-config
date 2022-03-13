require'nvim-treesitter.configs'.setup{
	ensure_installed = {
		'bash',
		'css',
		'dart',
		'dockerfile',
		'fish',
		'go',
		'gomod',
		'graphql',
		'html',
		'javascript',
		'json',
		'lua',
		'php',
		'python',
		'rust',
		'scss',
		'svelte',
		'toml',
		'tsx',
		'typescript',
		'vim',
		'yaml',
		'c',
		'java',
		'vue',
		'jsdoc',
		'json',
	},
	highlight = {
  	enable = true,
		additional_vim_regex_highlighting = false,
  }
}
