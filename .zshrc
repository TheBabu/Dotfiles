#Setup
ZSH=/usr/share/oh-my-zsh/
DISABLE_AUTO_UPDATE="true"

#Powerlevel9k
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon background_jobs virtualenv dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()

POWERLEVEL9K_HOME_ICON=""
POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_HOME_SUB_ICON=""
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SEGMENT_END_SEPARATOR=" "

POWERLEVEL9K_LINUX_ICON=""
POWERLEVEL9K_OS_ICON_BACKGROUND="063"
POWERLEVEL9K_OS_ICON_FOREGROUND="253"

POWERLEVEL9K_DIR_HOME_BACKGROUND="240"
POWERLEVEL9K_DIR_HOME_FOREGROUND="249"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="240"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="249"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="240"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="249"

POWERLEVEL9K_VCS_CLEAN_BACKGROUND="002"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="000"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="009"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="000"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="004"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="000"
POWERLEVEL9K_VIRTUALENV_BACKGROUND="008"
POWERLEVEL9K_VIRTUALENV_FOREGROUND="007"
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="008"
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="007"

#Aliases
alias tb="ncat termbin.com 9999"

cat /home/ariq/.Hacksaurus.txt

#Extra
plugins=(git)
plugins=(zsh-autosuggestions)
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

