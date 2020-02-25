# my-vim
.vim Folder with my configuration:

1) Open terminal and type:
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 

2) Clone repository to into your user root diretory.

3) Create ".vimrc" file in user root diretory. 
  - Add the following line: source ~/.vim/.vimrc

4) Open your favorite terminal and type: vim

5) Download plugins, enter ex mode (:), then type > PlugInstall

If any issues happend when Plug tries to download coc-vim dependencies, then download each one manually:
  - :CocInstall coc-spell-checker
  - :CocInstall coc-tsserver
  - :CocInstall coc-calc
  - :CocInstall coc-flow
  - :CocInstall coc-tabnine
  - :CocInstall coc-git
  - :CocInstall coc-highlight
  - :CocInstall coc-yaml
  - :CocInstall coc-html
  - :CocInstall coc-json
  - :CocInstall coc-xml
