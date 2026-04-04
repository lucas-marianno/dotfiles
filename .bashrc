#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
PS1="\[\e[1;31m\]\u\[\e[m\]\[\e[1;37m\]@\[\e[m\]\[\e[1;32m\]\h\[\e[m\]\[\e[1;37m\]:\[\e[m\]\[\e[1;34m\]\W\[\e[m\] \[\e[1;37m\]\\$\[\e[m\] "

# Aliases
alias ..='cd ..'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
# alias rm="trash"
alias wpp="brave --profile-directory=Default --app-id=hnpfjngllnobngcgfapefoaidbinmjnm" # runs WhatsApp Web

# .conf
alias hypr.conf='cd ~/.config/hypr/ && nvim .'
alias nvim.conf='cd ~/.config/nvim/ && nvim .'
alias kitty.conf='cd ~/.config/kitty/ && nvim .'
alias timeshift.conf='cd /etc/timeshift/ && sudo nvim .'

# pacman aliases
alias pacman-search="pacman -Ss "
alias pacman-install="pacman -S "
alias pacman-uninstall="pacman -Rnsu " # -R remove -n nosave -s recursive -u unneeded
alias pacman-list-manually-installed="pacman -Qet" # -Q query -e explicitly installed -t test dependencies (returns only pkgs that are not needed by any other pkg)
alias pacman-list-orphans="pacman -Qdtq" # flag -q ommits version so that it can be piped into pacman itself. Ex: sudo pacman -Rns $(pacman -Qdtq)
alias pacman-remote-info="pacman -Si "
alias pacman-local-info="pacman -Qi "
alias pacman-clear-pkg-cache="pacman -Sc"

# Environment Variables
export ANDROID_HOME=~/Android/Sdk/
export CHROME_EXECUTABLE="google-chrome-stable"
export EDITOR=/bin/nvim

# Scripts
alias _backupAndUpdate="sudo sh ~/Scripts/backup_update_remove-trash.sh"

# notes:
#
# run archlinux-java to set a specific JDK as the default
