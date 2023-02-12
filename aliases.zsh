# Shortcuts
alias zshconfig="code $DOTFILES/.zshrc"
alias copyssh="pbcopy < $HOME/.ssh/id_ed25519.pub"
alias reload="exec $SHELL"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias cl="clear"
alias update="brew update && composer global update && npm -g update"

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"
alias projects="cd $HOME/Projects"

# Laravel
alias artisan="php artisan"
alias art="artisan"
alias fresh="art migrate:fresh --seed"
alias tinker="art tinker"
alias seed="art db:seed"
alias migrate="art migrate"

# PHP
alias cfresh="rm -rf vendor/ composer.lock && composer i"
alias composer="php -d memory_limit=-1 /opt/homebrew/bin/composer"

# Node
alias nfresh="rm -rf node_modules/ package-lock.json && npm install"
alias watch="npm run dev"
