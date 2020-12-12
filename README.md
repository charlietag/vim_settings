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

## Note

### Vim - remove HTML outer tag / inner text without plugins
* Remove outer tag ([link](https://stackoverflow.com/questions/6264012/how-to-delete-html-tags-not-the-contents-in-vim))
  * Normal Mode
    * `y` `i` `t` `v` `a` `t` `p`
* Rmove inner text ([link](https://stackoverflow.com/questions/946188/delete-text-in-between-html-tags-in-vim/946241))
  * Normal Mode
    * `d` `i` `t`

### emmet-vim
* Tutorial
  * https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL
* Tutorial (中文)
  * https://www.itread01.com/content/1494736004.html
* html:5 + `tab`

  ```
  <!DOCTYPE html>
  <html lang="en">
  <head>
    <meta charset="UTF-8">
    <title></title>
  </head>
  <body>
  </body>
  </html>
  ```

* iv>p>ui>li*5 + `tab`

  ```
  <div>
    <p>
      <ui>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
      </ui>
    </p>
  </div>
  ```

* div>p*5>.haha + `tab`

  ```
  <div>
    <p><span class="haha"></span></p>
    <p><span class="haha"></span></p>
    <p><span class="haha"></span></p>
    <p><span class="haha"></span></p>
    <p><span class="haha"></span></p>
  </div>
  ```

* ul>li.list*5

  ```
  <ul>
    <li class="list"></li>
    <li class="list"></li>
    <li class="list"></li>
    <li class="list"></li>
    <li class="list"></li>
  </ul>
  ```

* ul>li.list$*5

  ```
  <ul>
    <li class="list1"></li>
    <li class="list2"></li>
    <li class="list3"></li>
    <li class="list4"></li>
    <li class="list5"></li>
  </ul>
  ```

* Add tag to existing words and lines
  * Visual and select three lines

    ```
    line A
    line B
    line C
    ```

  * Ctrl+y -> ,  -> (tag mode) ul>li

    ```
    <ul>
    <li>
      asdfa
      dfasdf
    </li>
    </ul>
    ```

* on existing URL (https://github.com)
  * (vim **insert/nomal mode**)
    * Ctrl+y -> a

      ```
      <a href="https://github.com">GitHub: Where the world builds software · GitHub</a>
      ```

    * Ctrl+y -> A
      ```
			<blockquote class="quote">
			<a href="https://github.com">GitHub: Where the world builds software · GitHub</a>
			<br>
			<p># Octocat Classifier :octopus: :cat: :mag: ![](https://img.shields.io/badge/build-passing-brightgree...</p>
			<cite>https://github.com</cite>
			</blockquote>
      ```

### vim-surround
* delete surround
	* ds`"`
* delete surround no matter what
	* dst
* change surround `"` -> `'`
	* cs`"'`
* change surround no matter what `anything` -> `'`
	* cst`'`
* Add surround on **word** with `"`
	* ys**iw**`"`
* Add surround on **line** with `"`
	* ys**s**`"`

## Changelog

* 2020/09/08
  * Replace ~~Raimondi/delimitMate~~ with **jiangmiao/auto-pairs**
