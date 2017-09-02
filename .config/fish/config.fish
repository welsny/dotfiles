# Aliases:

alias vim nvim
alias tmux "tmux -2"
alias lt "ls -altr"

alias chrome "open -a /Applications/Google\ Chrome.app/"
alias vlc "open -a /Applications/VLC.app/"
alias word "open -a /Applications/Microsoft\ Word.app/"
alias libre "open -a /Applications/LibreOffice.app/"

alias gmail "for i in 0 1 ; chrome https://mail.google.com/mail/u/\$i ; end"

# alias git hub
# alias python ipython

# Hardware:

# OSX Mouse/Trackpad Acceleration:
defaults write .GlobalPreferences com.apple.mouse.scaling -1
defaults write -g com.apple.trackpad.scaling -float 5.0
defaults write -g com.apple.mouse.scaling -float 5.0
  
# Misc:

eval (python -m virtualfish)
set -gx PATH $PATH ~/.scripts/

