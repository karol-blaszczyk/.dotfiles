# Path to your oh-my-zsh installation.
export ZSH=/Users/karolblaszczyk/.oh-my-zsh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# source ~/.bin/tmuxinator.bash
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="muse"


# export PATH="$HOME/.npm-packages/bin:$PATH"
# export PATH="/usr/local/sbin:$PATH"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
# export PATH="/usr/local/opt/node@6/bin:$PATH"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# export PATH="/usr/local/opt/openssl/bin:$PATH"

alias scp='noglob scp_wrap'
function scp_wrap {
	  local -a args
	    local i
	      for i in "$@"; do case $i in
		          (*:*) args+=($i) ;;
			      (*) args+=(${~i}) ;;
			        esac; done
				  command scp "${(@)args}"
			  }

alias sbw='cd ~/SightBlushProject/SightBlushWeb'

function memfor {
  if [ -z $(pidof $1) ] 
  then
    echo 'Process not found' 
  else
   top -stats mem -a -pid $(ps aux | awk '/\'$1'/ && ! /awk/ { print $2; exit; }')
  fi
  # top -stats mem -a -pid $(ps aux | awk '/\'$1'/ && ! /awk/ { print $2; exit; }')
}

function pidof {
  ps aux | awk '/\'$1'/ && ! /awk/ { print $2; exit; }'
}

function onports {
  lsof -i :$1
}

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
 COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ruby gem history history-substring-search terminalapp brew bundler rails nvm react-native)

# User configuration
# export PATH="/Users/karolblaszczyk/.rvm/gems/ruby-2.2.4@media_manager/bin:/Users/karolblaszczyk/.rvm/gems/ruby-2.2.4@global/bin:/Users/karolblaszczyk/.rvm/rubies/ruby-2.2.4/bin:/Users/karolblaszczyk/.rvm/bin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/Users/karolblaszczyk/.npm-packages/bin"

# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias be='bundle exec'
alias runresque="bundle exec env rake resque:workers QUEUE='*' COUNT='3'"
alias rackc='bundle exec irb -r ./app.rb'
alias rsidekiq='be sidekiq -C config/sidekiq.yml -r ./app.rb'
alias devtools='bundle exec rake polishgeeks:dev-tools:check'

alias pull_wp_strike='scp -i ~/.ssh/elasticbenstalk.pem -r ec2-user@ec2-54-187-221-110.us-west-2.compute.amazonaws.com:/var/app/current/* /Users/karolblaszczyk/Strike/MAIN_SITE/current'

alias strikedev='ssh ubuntu@ec2-52-11-230-46.us-west-2.compute.amazonaws.com'

alias gs='git status '
alias ga='git add '
alias gb='git branch '
alias gc='git commit'
alias gcm='git commit -m'
alias gd='git diff'
alias go='git checkout '
alias gk'gitk --all&'
alias gx='gitx --all'
alias ts='tig status'

alias cl='clear'

export NVM_DIR="/Users/karolblaszczyk/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
 # export PYENV_ROOT="$HOME/.pyenv"
 # export PATH="$PYENV_ROOT/bin:$PATH"
 # eval "$(pyenv init -)"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.

# export PATH="/usr/local/sbin:$PATH"
# export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
