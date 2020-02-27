# my-vim
.vim Folder with my configuration:

1) Open terminal and type:
```
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
<br/>

2) Clone repository to into your user root diretory.

3) Create ".vimrc" file in user root diretory and with following content:  
`source ~/.vim/.vimrc`   
<br/>

4) Open a terminal window and type:
`vim`  
<br/>

5) type:   
`PlugInstall`  
<br/>

<h2> Shortcuts </h2>
*Important: leader key is "," 

- Trasition between Splits:
`<TAB>`   
  <br/>
  
-Toggle(on/off) NerdTree(file explorer):  
`<leader> <TAB>`  
<br/>
  
- Open new Vertical Split:   
`<leader> v`  
<br/>

- Open new horizontal Split:   
`<leader> h`   
<br/>
  
- Open tagbar:   
`F8`   
<br/>

- Go to Next Open Buffer(file):    
`<leader> bb`   
<br/>

- Close current Buffer:  
`<leader> bd`   
<br/>

- Resize Splits by using Arrow keys  
<br/>

- Open Fzf Search (will search in current folder):   
`<leader> e`   
<br/>

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
