# my-vim
.vim Folder with my configuration:

1) Open terminal and type:
```
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

2) Clone repository to into your user root diretory.

3) Create ".vimrc" file in user root diretory and with following content:
`source ~/.vim/.vimrc`

4) Open termina and Vim:
`vim`

5) Download plugins, enter ex mode (:), then type > `PlugInstall`

See below a couple of shortcuts, keep in mind that I configured <leader> key as ",":
- Trasition between Splits:
`<TAB>`
  
-Toggle(on/off) NerdTree(file explorer): 
`<leader> <TAB>`

- Open new Vertical Split: 
`<leader> v`

- Open new horizontal Split: 
`<leader> h`

- Open tagbar: 
`F8`

- Go to Next Open Buffer(file): 
`<leader> bb`

- Close current Buffer: 
`<leader> bd`

- Resize Splits by using Arrow keys

- Open Fzf Search (will search in current folder): 
`<leader> e`

If any issues happend when Plug tries to download coc-vim dependencies, then download each one manually:
```
:CocInstall coc-spell-checker
:CocInstall coc-tsserver
:CocInstall coc-calc
:CocInstall coc-flow
:CocInstall coc-tabnine
:CocInstall coc-git
:CocInstall coc-highlight
:CocInstall coc-yaml
:CocInstall coc-html
:CocInstall coc-json
:CocInstall coc-xml
```
