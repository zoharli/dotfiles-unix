# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
#. $HOME/torch/install/bin/torch-activate    
#
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

setopt nobeep nolistbeep nohistbeep

if [[ $(file /bin/bash) == *Mac* ]] then
	#-------------------------------------mac----------------------------------------
	export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
	alias pt='$HOME/Applications/anaconda3/bin/ipython -i ~/.python_startup.py'
	alias pip='$HOME/Applications/anaconda3/bin/pip'
	export PATH="$HOME/Applications/anaconda3/bin:$PATH"
	alias doc='cd ~/Documents/'
	alias down='cd ~/Downloads/'
	alias mdl='megadl'
	alias rm='sudo rm'
	alias del='rmtrash'
	alias vim='mvim -v'
	alias ,v='mvim -v ~/.vimrc'
	#----------------acm-----------------
	alias ei='touch in.txt && open -e in.txt'
	alias algo='cd ~/Documents/algorithm'
	alias poj='cd ~/Documents/algorithm/Poj'
	alias aoj='cd ~/Documents/algorithm/Aoj'
	alias cf='cd ~/Documents/algorithm/CodeForces'
	alias atcoder='cd ~/Documents/algorithm/AtCoder'
	alias tc='cd ~/Documents/algorithm/TopCoder'
	alias hiho='cd ~/Documents/algorithm/HihoCoder'
elif [[ $(file /bin/bash) == *Linux* ]] then
	#---------------------------------linux-----------------------------------------
	export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
	export CUDA_HOME=/usr/local/cuda
	export PATH="$HOME/anaconda3/bin:$PATH"
	alias pt='$HOME/anaconda3/bin/ipython -i ~/.python_startup.py'
	alias pip='$HOME/anaconda3/bin/pip'
	alias del="sh $HOME/.del.sh"
	alias ,v="vim ~/.vimrc"
else 
	echo "not linux or mac os!"
fi

#-----------------------------------server----------------------------------------
alias admin='ssh gteam@219.223.196.199'
alias amax='ssh zhangheng_li@219.223.192.221'
export AMAX=zhangheng_li@219.223.192.221
alias gteam='ssh lzh@219.223.196.199'
export GTEAM=lzh@219.223.196.199
alias minspur='mosh lzh@219.223.196.236'
alias inspur='ssh lzh@219.223.196.236'
export INSPUR=lzh@219.223.196.236
alias t1='ssh zhangheng_li@219.223.192.122'
export T1=zhangheng_li@219.223.192.122
alias k1='ssh lzh@219.223.194.203'
export K1=lzh@219.223.194.203
alias lnn='ssh lzh@219.223.195.48'
export LNN=lzh@219.223.195.48
alias v1='ssh lzh@219.223.195.105'
export V1=lzh@219.223.195.105
alias v2='ssh lzh@219.223.194.205'
export V2=lzh@219.223.194.205
alias m10='ssh lzh@192.168.202.80'
export M10=lzh@192.168.202.80
alias g1='ssh huangjj@219.223.195.229'
export G1=huangjj@219.223.195.229
alias g2='ssh huangjj@219.223.192.139'
export G2=huangjj@219.223.192.139
alias g3='ssh huangjj@219.223.196.71'
export G3=huangjj@219.223.196.71
alias g4='ssh huangjj@219.223.196.129'
export G4=huangjj@219.223.196.129
alias mega='ssh zohar@megatron.pkuml.com'
alias clu='ssh zohar@cluster.pkuml.org'
export CLU=zohar@cluster.pkuml.org
alias smi='nvidia-smi'
alias gpu0='CUDA_VISIBLE_DEVICES=0'
alias gpu1='CUDA_VISIBLE_DEVICES=1'
alias gpu2='CUDA_VISIBLE_DEVICES=2'
alias gpu3='CUDA_VISIBLE_DEVICES=3'
alias gpu4='CUDA_VISIBLE_DEVICES=4'
alias gpu5='CUDA_VISIBLE_DEVICES=5'
alias gpu6='CUDA_VISIBLE_DEVICES=6'
alias gpu7='CUDA_VISIBLE_DEVICES=7'


#-----------------------------------general---------------------------------------
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export LC_ALL=C
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PYTHONUNBUFFERED=1
export PYTHONDONTWRITEBYTECODE=1
alias scp='scp -r'
alias updb='sudo updatedb'
alias mt='ctags -R --fields=+iaS --extra=+q --c-types=+l --c++-types=+l --java-types=+l --python-types=+i *'
alias p="python3"
alias p2="python"
alias ,z='vim ~/.zshrc'
alias sz='source ~/.zshrc'
alias py='python'
alias lt='l -t'
alias psa='ps -eo pid,tty,user,comm,lstart,pcpu,%mem'
DISABLE_AUTO_UPDATE="true"
export PATH=$PATH:/usr/local/Cellar/aria2/1.33.0/bin
#alias g++="g++ -std=c++11"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

