#Setup
ZSH=/usr/share/oh-my-zsh/
DISABLE_AUTO_UPDATE="true"

#Powerlevel9k
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs history time)

#Home
POWERLEVEL9K_HOME_ICON=""
POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_HOME_SUB_ICON=""
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SEGMENT_END_SEPARATOR=" "
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=""
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=""
POWERLEVEL9K_RIGHT_SEGMENT_END_SEPARATOR=""

#Icon
POWERLEVEL9K_LINUX_ICON=" "
POWERLEVEL9K_OS_ICON_BACKGROUND="238"
POWERLEVEL9K_OS_ICON_FOREGROUND="249"

#Directory
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
POWERLEVEL9K_DIR_HOME_BACKGROUND="240"
POWERLEVEL9K_DIR_HOME_FOREGROUND="249"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="240"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="249"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="240"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="249"

#Github
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="002"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND="000"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="009"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="000"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="004"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="000"

#Background Jobs
POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE=true
POWERLEVEL9K_BACKGROUND_JOBS_ICON="\uF013"
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="008"
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="007"

#History
POWERLEVEL9K_HISTORY_BACKGROUND="240"
POWERLEVEL9K_HISTORY_FOREGROUND="249"

#Time
POWERLEVEL9K_TIME_BACKGROUND="246"
POWERLEVEL9K_TIME_FOREGROUND="238"

#Aliases/Cat
alias tb="ncat termbin.com 9999"
cat /home/ariq/.Hacksaurus.txt

#Extra
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme

#Syntax Highlighting
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

ZSH_HIGHLIGHT_STYLES[default]=fg=250
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=108
ZSH_HIGHLIGHT_STYLES[alias]=fg=063
ZSH_HIGHLIGHT_STYLES[builtin]=fg=063
ZSH_HIGHLIGHT_STYLES[function]=fg=063
ZSH_HIGHLIGHT_STYLES[command]=fg=063
ZSH_HIGHLIGHT_STYLES[precommand]=fg=069
ZSH_HIGHLIGHT_STYLES[path]=fg=249,underline
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=222
ZSH_HIGHLIGHT_STYLES[comment]=fg=245,italic
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=250
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=250
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=250
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=033
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=173
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=173
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=140
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=140
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=140
ZSH_HIGHLIGHT_STYLES[bracket-level-1]=fg=250
ZSH_HIGHLIGHT_STYLES[bracket-level-2]=fg=250
ZSH_HIGHLIGHT_STYLES[bracket-level-3]=fg=250
ZSH_HIGHLIGHT_STYLES[bracket-level-4]=fg=250
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]=fg=237,bold,bg=74 
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=240

#Background Jobs Function
set_default POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE true
prompt_background_jobs() {
local background_jobs_number=${$(jobs -l | wc -l)// /}
local wrong_lines=`jobs -l | awk '/pwd now/{ count++ } END {print count}'`
if [[ wrong_lines -gt 0 ]]; then
     background_jobs_number=$(( $background_jobs_number - $wrong_lines ))
  fi
  if [[ background_jobs_number -gt 0 ]]; then
    local background_jobs_number_print="1"
    if [[ "$POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE" == "true" ]] && [[ "$background_jobs_number" -gt 1 ]]; then
      background_jobs_number_print="$background_jobs_number"
    fi
    "$1_prompt_segment" "$0" "$2" "$DEFAULT_COLOR" "cyan" "$background_jobs_number_print" 'BACKGROUND_JOBS_ICON'
  fi
}

