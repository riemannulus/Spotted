# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

ln -sf ~/.vim ~/.config/nvim
ln -sf ~/.vimrc ~/.vim/init.vim
alias vim="nvim"

export EDITOR="nvim"
eval $(thefuck --alias)
