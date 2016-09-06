# Aliases:

alias vim nvim

# Hardware:

echo 'xinput set-button-map $(xinput | grep "Evoluent" | awk {"print substr(7,4,2)"}) 1 3 3 4 5 6 7 9 2 8 11 12 13 14' | sh
setxkbmap -option ctrl:nocaps

# Misc:

set PATH $PATH /usr/local/Python-3.5.2/bin /tst/src/ext/R/curr/bin/
export PATH

eval (python -m virtualfish)

