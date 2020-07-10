#!/bin/bash

# ---------------------------------------------
# Define var
# ---------------------------------------------
VIM_RC="$HOME/.vimrc"
VIM_FOLDER="$HOME/.vim"

TAG_VIM_RC="${VIM_FOLDER}/vim_settings/vimrc"

# ---------------------------------------------
# Delete current VIM setting
# ---------------------------------------------
rm -f ${VIM_RC}
rm -fr ${VIM_FOLDER}

# ---------------------------------------------
# Start to install vim settings and plugin
# ---------------------------------------------
GIT_CMD="$(command -v git)"

if [[ -n "${GIT_CMD}" ]]; then
  mkdir -p ${VIM_FOLDER}
  #git -C ${VIM_FOLDER} clone https://github.com/charlietag/vim_settings.git
  cd ${VIM_FOLDER} && git clone https://github.com/charlietag/vim_settings.git
else
  echo "Sorry, Git is not installed yet!"
  exit
fi

if [[ -f "${TAG_VIM_RC}" ]]; then
  ln -s ${TAG_VIM_RC} ${VIM_RC}
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

if [[ -f "$HOME/.vim/autoload/plug.vim" ]]; then
  vim +'PlugInstall --sync' +qa
  echo ""
  echo "---------- VIM settings finished ----------"

else
  echo "$HOME/.vim/autoload/plug.vim not found !!!"
fi
