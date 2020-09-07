# vim_settings

## Description

Deploy my vim setting and vim plugins using [``vim-plug``](https://github.com/junegunn/vim-plug) on **CentOS 8**

* Be sure to **backup your config**
  * `$HOME/.vimrc`
  * `$HOME/.vim/`

## Installed Plugins

* godlygeek/tabular
* jiangmiao/auto-pairs
* scrooloose/nerdtree
* vim-airline/vim-airline
* tpope/vim-sensible
* easymotion/vim-easymotion
* tpope/vim-obsession
* tpope/vim-fugitive
* airblade/vim-gitgutter
* mattn/emmet-vim
* tomtom/tcomment_vim
* tpope/vim-surround
* tpope/vim-endwise
* vim-ruby/vim-ruby
* ap/vim-css-color
* charlietag/nginx.vim
  * clone from nginx/contrib, for highlight nginx config
* charlietag/lucid_tag.vim
  * default colorscheme

## Automatic Installation (Recommend)

```bash
$ bash <(curl -LSs https://raw.githubusercontent.com/charlietag/vim_settings/master/utils/install.sh)
```

## Manual Installation

* Remove current config
  * `rm -f $HOME/.vimrc`
  * `rm -fr $HOME/.vim`

* Install **vim-plug**

  ```bash
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  ```

* Clone my config
  * `cd $HOME/.vim && git clone https://github.com/charlietag/vim_settings.git`
  * `ln -s $HOME/.vim/vim_settings/vimrc $HOME/.vimrc`

* Install plugins via **vim-plug**
  * `vim +'PlugInstall --sync' +qa`

* Done

## Changelog

* 2020/09/08
  * Replace ~~Raimondi/delimitMate~~ with **xjiangmiao/auto-pairs**
