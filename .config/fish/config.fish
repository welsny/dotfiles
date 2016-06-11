# Aliases:

alias sublime "open -a /Applications/Sublime\ Text.app/"
alias vlc "open -a /Applications/VLC.app/"
alias word "open -a /Applications/Microsoft\ Word.app/"

alias vim nvim
alias git hub

# Hardware:

switch (uname)
    # OSX Mouse/Trackpad Acceleration:
    case Darwin:
        defaults write .GlobalPreferences com.apple.mouse.scaling -1
        defaults write -g com.apple.trackpad.scaling -float 5.0
        defaults write -g com.apple.mouse.scaling -float 5.0
  
    # Linux Button Mapping:
    case Linux:
        echo 'xinput set-button-map $(xinput | grep "Evoluent" | awk {"print substr(7,4,2)"}) 1 3 3 4 5 6 7 9 2 8 11 12 13 14' | sh
        setxkbmap -option ctrl:nocaps
end

# Misc:

eval (python -m virtualfish)
