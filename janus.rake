skip_vim_plugin "conque"
skip_vim_plugin "vividchalk"
skip_vim_plugin "snipmate"
#skip_vim_plugin "command_t"
skip_vim_plugin "color-sampler"
#skip_vim_plugin "nerdtree"

skip_vim_plugin "jslint"  # breaking MacVim on Lion

vim_plugin_task "railscasts" do
  sh "curl https://raw.github.com/gist/1096497/9e925748cc4a5bbe69c32307c69350d18ff7ff91/railscasts.vim > colors/railscasts.vim"
end

vim_plugin_task "rvm",              "git://github.com/csexton/rvm.vim.git"
vim_plugin_task "gundo",            "git://github.com/sjl/gundo.vim.git"

vim_plugin_task "FuzzyFinder", "git://github.com/vim-scripts/FuzzyFinder.git"
vim_plugin_task "L9", "git://github.com/vim-scripts/L9.git"
vim_plugin_task "bufexplorer",      "git://github.com/vim-scripts/bufexplorer.zip.git"