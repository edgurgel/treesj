local M = {}

M.configured_langs = {
  'javascript',
  'typescript',
  'lua',
  'html',
  'json',
  'jsonc',
  'vue',
  'css',
  'scss',
  'tsx',
  'php',
  'ruby',
  'go',
  'java',
  'pug',
  'svelte',
  'rust',
  'python',
  'starlark',
  'r',
  'cpp',
  'c',
  'toml',
  'yaml',
  'nix',
  'kotlin',
  'bash',
}

M.presets = {}

for _, lang in ipairs(M.configured_langs) do
  M.presets[lang] = require('treesj.langs.' .. lang)
end

return M
