[[ -f ~/.bashrc ]] && . ~/.bashrc

# If user ID is greater than or equal to 1000 & if ~/.local/bin exists and is a directory & if ~/.local/bin is not already in $PATH
# then export ~/.local/bin to $PATH.
if [[ $UID -ge 1000 && -d $HOME/.local/bin && -z $(echo $PATH | grep -o $HOME/.local/bin) ]]
then
    export PATH="${PATH}:$HOME/.local/bin"
fi

export EDITOR="nvim"
export IDE="vscodium"
export TERMINAL="termite"
export BROWSER="firefox"
export FILE="ranger"
export IDE="vscodium"
export WM="bspwm"

export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi