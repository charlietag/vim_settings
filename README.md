# vim_settings

```bash
cd .vim/bundle
cat installed_plugin | xargs -n 1 -P 10 -i bash -c "echo ----- Downloading Vim Plugin : {} -----; git clone https://github.com/{}.git; echo "
```
