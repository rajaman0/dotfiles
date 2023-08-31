# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
plugins=(
    git 
    thefuck 
    zsh-autosuggestions
    gitfast
)
export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="lukerandall"
ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh

alias pipt="run-piptools"
alias vnv=". venv/bin/activate"
alias branchd="git branch | grep -v 'master' | xargs git branch -D"
[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
eval $(thefuck --alias)
eval "$(aactivator init)"
eval "$(direnv hook zsh)"
eval "$(/Users/ctoprani/src/idl/idldev-tool/bin/idldev init -)"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Add support for Go modules and Lyft's Athens module proxy/store
# These variables were added by 'hacktools/set_go_env_vars.sh'
export GOPROXY='https://athens.ingress.infra-prd.us-east-1.k8s.lyft.net/'
export GONOSUMDB='github.com/lyft/*,github.lyft.net/*'
PATH=$PATH:/Users/ctoprani/.spcli/bin

### lyft_localdevtools_shell_rc start
### DO NOT REMOVE: automatically installed as part of Lyft local dev tool setup
if [[ -f "/opt/homebrew/Library/Taps/lyft/homebrew-localdevtools/scripts/shell_rc.sh" ]]; then
    source "/opt/homebrew/Library/Taps/lyft/homebrew-localdevtools/scripts/shell_rc.sh"
fi
### lyft_localdevtools_shell_rc end
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export PATH=/opt/homebrew/bin:$PATH


### lyft_rd_shell_rc start
### DO NOT REMOVE: automatically installed as part of Rancher Desktop setup
if [[ -f /Users/ctoprani/.rd/shell_rc.sh ]]; then
  source /Users/ctoprani/.rd/shell_rc.sh
fi
### lyft_rd_shell_rc end
