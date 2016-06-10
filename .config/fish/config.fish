# Button remapping for Linux
echo 'xinput set-button-map $(xinput | grep "Evoluent" | awk {"print substr(7,4,2)"}) 1 3 3 4 5 6 7 9 2 8 11 12 13 14' | sh
setxkbmap -option ctrl:nocaps

alias vim nvim
alias git hub
