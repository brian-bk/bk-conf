#!/bin/bash
LINE_BRK="------------------------------------------------------------"
CONF_DIR=$(cd conf && pwd)/

function link_conf()
{
  for FILE in $(ls -A ${CONF_DIR}); do
    SRC_FILE=${CONF_DIR}${FILE}
    LINK_LOCATION=~/${SRC_FILE#$CONF_DIR}
    if [ -h ${LINK_LOCATION} ]; then
      LINK_TARGET=$(readlink ${LINK_LOCATION})
      if [ ! ${LINK_TARGET} = ${SRC_FILE} ]; then
        echo "There is already a symlink at ${LINK_LOCATION} which points to ${LINK_TARGET} instead of ${SRC_FILE}"
      fi
    elif [ -e ${LINK_LOCATION} ]; then
      echo "The file ${LINK_LOCATION} already exists, delete it to be able to install this way"
    else
      echo "Making link ${LINK_LOCATION} -> ${SRC_FILE}"
      ln -s ${SRC_FILE} ${LINK_LOCATION}
    fi
  done
}

bkbashrc_add()
{
  if grep ".bkbashrc" ~/.bashrc > /dev/null
  then
    # Found in ~/.bashrc, should be fine
    :
  else
    echo "Adding loading of ~/.bkbashrc to ~/.bashrc"
    echo "
# Load ~/.bkbashrc custom bashrc
if [ -f ~/.bkbashrc ]; then
  . ~/.bkbashrc
fi" >> ~/.bashrc
  fi
}

vim_packages_install()
{
  if [ ! -e ${CONF_DIR}.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ${CONF_DIR}.vim/bundle/Vundle.vim
  fi
  vim +PluginInstall +qall
}

link_conf
bkbashrc_add
vim_packages_install
