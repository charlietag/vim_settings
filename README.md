# vim_settings

```bash
curl -LSso .vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
cd .vim/bundle
cat installed_plugins | xargs -n 1 -P 10 -i bash -c "echo ----- Downloading Vim Plugin : {} -----; git clone https://github.com/{}.git; echo "
```
