-- vim.g.everforest_background= 'medium'

vim.cmd [[
try
    colorscheme tokyonight 
catch /^Vim\%((\a\+)\)\=:E185/
    colorscheme default
    set background=dark
endtry
]]
