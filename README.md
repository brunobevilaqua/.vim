# Vim configuration

.vim Folder with my configuration:

1. Open terminal and type:

```
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

<br/>

2. Clone repository into your user root diretory.  
   <br/>

3. Create ".vimrc" file in user root diretory and with following content:  
   `source ~/.vim/.vimrc`  
   <br/>

4. Open a terminal window and type:  
   `vim`  
   <br/>

5. type:  
   `PlugInstall`  
   <br/>

<h2> Shortcuts </h2>
*<b>Important:</b> leader key is  `<Space>`

- Trasition between Splits:  
  `<TAB>`  
   <br/>
- Toggle(on/off) NerdTree(file explorer):  
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

<hr>

<b>IMPORTANT</b>:<br/>
Run the terminal using a Patched font, otherwise you will see a "?" in nerdtree, file name and airline bar. <br/>
Two easy ways to install are:<br/>
1- First Option for MacOs, install thru homebrew: <br/>
```
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-fon
```
<br/>
2- Second option: <br/>
- Run PlugInstall <br/>
- Go to ryanoasis/vim-devicons Plugin folder <br/>
- run `install.sh` script inside ryanoasis/vim-devicons <br/>
For more options check: https://github.com/ryanoasis/nerd-fonts#font-installation
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
<hr>

<p> Usefull links for customizing terminal: </p>
<ul>
  <li><code>https://gist.github.com/kevin-smets/8568070</code></li>
  <li><code>https://github.com/romkatv/powerlevel10k</code></li>
</ul>
