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
# fish_add_path /opt/homebrew/bin
# eval (/opt/homebrew/bin/brew shellenv)

# eval "$(/usr/local/bin/brew shellenv fish)"

if test -d /opt/homebrew/bin
    eval (/opt/homebrew/bin/brew shellenv)
end

eval "$(/opt/homebrew/bin/brew shellenv fish)"

alias wm-start="yabai &; skhd &; borders active_color=0xff7aa2f7 inactive_color=0xff3b4252 width=2.0 &"
alias wm-restart="pkill -9 yabai; pkill -9 skhd; wm-start"

# OpenClaw Completion
source "/Users/lola/.openclaw/completions/openclaw.fish"
