export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

export MVN_PATH="/usr/local/bin"

  export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"


function Color() {
  echo "\[$(tput setaf $1)\]"
}
function Reset() {
  echo "\[$(tput sgr0)\]"
}
function Bold() {
  echo "\[$(tput bold)\]"
}
function GitBranch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function BashPrompt() {
    local last_status=$?

    local color=$(Color 2)
    local symbol="✓"

    if [[ "$last_status" != "0" ]]; then
        color=$(Color 1)
	symbol="✘"
    fi

    echo "\n$color$symbol $(Bold)\u$(Reset) $(Color 5)\w$(Color 3)$(GitBranch) \[\033[38;5;8m\][\A]\[$(tput sgr0)\] \n$color └─▸ $(Reset)"
}

PROMPT_COMMAND='PS1=$(BashPrompt)'
