alias gs="git status"
alias gc="git commit"
alias ls="exa --long --header --git"
alias battery="upower -i /org/freedesktop/UPower/devices/battery_BAT0"
alias pacrem="sudo pacman -Rns"
alias cpu="cpupower-gui"
alias db="mysql -u cezary -p"
alias show="kak -ro"
alias update-all="echo --- PACMAN --- && sudo pacman -Syyuu && echo \n--- AUR ---  && yay -Syyuu && echo \n--- FLATPAK ---  && flatpak update"

source ~/.nvm-fish/nvm.fish