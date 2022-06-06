# nvim configuration

## Requirement

- NeoVim
- Deno
- dein.vim
- Python3

## Instaration

### NeoVim

```
$ sudo add-apt-repository ppa:neovim-ppa/unstable
$ sudo apt-get update
$ sudo apt-get install neovim
```

### Deno

Please see [Deno](https://deno.land/). The following commands are an example for Linux. If MaxOS, you can use homebrew.

```
$ curl -fsSL https://deno.land/install.sh | sh
$ vi ~/.bash_profile
  export DENO_INSTALL="/home/user/.deno"
  export PATH="$DENO_INSTALL/bin:$PATH"
```

### Python3 (pip)

```
pip3 install pynvim
pip3 install msgpack
```

### Clone repository

```
mkdir ~/.config
cd ~/.config
git clone https://github.com/dss-k/nvim.git
```

### dein.vim

Please see [dein.vim](https://github.com/Shougo/dein.vim). The following commands are an example for Linux/MacOS.
```
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.config/nvim/dein
```


### Language Server

If you need LSP, please install Language Server by following nvim command.
For more information, please see [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer).

Python
```
:LspInstall pylsp
```

C++
```
:LspInstall clangd
```

#### References
- [ddc.vimのlsp機能を強くする with nvim-lsp](https://zenn.dev/matsui54/articles/2021-09-03-ddc-lsp)
- [ddc.vimとBuiltin LSPでサブ武器を錬成した](https://riq0h.jp/2021/09/15/084023/)
