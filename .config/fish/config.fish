# Aliases:

alias vim nvim
alias tmux "tmux -2"
alias lt "ls -altr"

alias chrome "open -a /Applications/Google\ Chrome.app/"
alias vlc "open -a /Applications/VLC.app/"
alias word "open -a /Applications/Microsoft\ Word.app/"
alias libre "open -a /Applications/LibreOffice.app/"

alias gmail "for i in 0 1 ; chrome https://mail.google.com/mail/u/\$i ; end"
alias gstatic "open -a /Applications/Safari.app https://gstatic.com/generate_204"
alias engw "open ~/Downloads/ENGW_3302/FA17\ Schedule\ 3302\ AWD.pdf; chrome \"https://blackboard.neu.edu/webapps/blackboard/content/listContent.jsp?course_id=_2501315_1&content_id=_13939649_1\""
alias apps "chrome https://docs.google.com/spreadsheets/d/1tK90C7US4z-mQc-DbhiEBNQ6a6S0Yyv85MrWmKxIJ8E/edit#gid=0"
alias foodtrucks "open ~/Desktop/neu_food_truck.png"
alias news "for i in Biolfit9JkE yk2CUjbyyQY Fu2etwHzcvw ; chrome https://www.youtube.com/watch\?v=\$i ; end"

# alias git hub
# alias python ipython

# Hardware:

# macOS Mouse/Trackpad Acceleration:
defaults write .GlobalPreferences com.apple.mouse.scaling -1
defaults write -g com.apple.trackpad.scaling -float 5.0
defaults write -g com.apple.mouse.scaling -float 5.0

# macOS Dįśãbłę Çhãrãçtęr Åççęñt Męñü
defaults write -g ApplePressAndHoldEnabled -bool false

# Misc:

if not pgrep Bartender > /dev/null
    open -a /Applications/Bartender\ 2.app/
end
set -gx PATH $PATH ~/.scripts/

