# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew osx gem bundler ryan npm rbenv git-flow sublime capistrano)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH="/usr/local/bin:$PATH"
export NODE_PATH="/usr/local/lib/node_modules"
export PATH="/Users/ryanmacg/.rbenv:/usr/local/bin:/usr/local/share/python:/Users/ryanmacg/Library/Developer/android-sdk-macosx/platform-tools:/Users/ryanmacg/Library/Developer/android-sdk-macosx/tools:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/X11/bin"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Ruby GC suited for Rails apps
export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000

#Aliases
alias flushdns='dscacheutil -flushcache'
alias showfiles='defaults write com.apple.Finder AppleShowAllFiles YES;killall Finder'
alias hidefiles='defaults write com.apple.Finder AppleShowAllFiles NO;killall Finder'
alias tapon="defaults write com.apple.dock double-tap-jump-back -bool TRUE;killall Dock"
alias tapoff="defaults write com.apple.dock double-tap-jump-back -bool FALSE;killall Dock"
alias m="mate"
alias halconnect="ssh -p 23 ryan@halserve.dyndns.tv"
alias skankconnect="ssh ryan@euroskank.dyndns.ws"
alias zshconf="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias ftpstart="sudo -s launchctl load -w /System/Library/LaunchDaemons/ftp.plist"
alias ftpstop="sudo -s launchctl unload -w /System/Library/LaunchDaemons/ftp.plist"
alias poststart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias postreload="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log reload"
alias poststop="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop"
alias serviiostart="sudo launchctl load /Library/LaunchDaemons/org.serviio.server.plist"
alias serviiostop="sudo launchctl unload /Library/LaunchDaemons/org.serviio.server.plist"
alias cleanDirs="python ~/code/scripts/emptyDir.py"
alias hideSpot="sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search;killall SystemUIServer"
alias showSpot="sudo chmod 755 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search;killall SystemUIServer"
alias py="python"
alias slateconf="subl ~/.slate"
alias clearDownloads="sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"
