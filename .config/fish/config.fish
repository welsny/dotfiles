# Aliases:

alias vim nvim
alias tmux "tmux -2"
alias lt "ls -altrh"

alias chrome "open -a /Applications/Google\ Chrome.app/"
alias vlc "open -a /Applications/VLC.app/"
alias word "open -a /Applications/Microsoft\ Word.app/"
alias libre "open -a /Applications/LibreOffice.app/"

alias gmail "chrome https://mail.google.com/mail/u/0; chrome https:/mail.google.com/mail/u/1; chrome https://calendar.google.com"
alias gstatic "open -a /Applications/Safari.app https://gstatic.com/generate_204"

# alias git hub
# alias python ipython

# Hardware:

# macOS Mouse/Trackpad Acceleration:
defaults write .GlobalPreferences com.apple.mouse.scaling -1
defaults write -g com.apple.trackpad.scaling -float 5.0
defaults write -g com.apple.mouse.scaling -float 7.0

# macOS Dįśãbłę Çhãrãçtęr Åççęñt Męñü
defaults write -g ApplePressAndHoldEnabled -bool false

# Misc:

set -x HOMEBREW_EDITOR nvim
