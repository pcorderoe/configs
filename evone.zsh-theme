function node_prompt_version {
    if which node &> /dev/null; then
        echo "%{$fg_bold[blue]%} %{$fg[red]%}$(node -v)%{$fg[blue]%} %{$reset_color%}"
    fi
}

function actual_date {
    echo "%F{green}%D{%L:%M} %F{yellow}%D{%p}%f"
}

PROMPT='%F{green}%2c$(node_prompt_version)[%f '
RPROMPT='$(git_prompt_info)%F{blue}]'

ZSH_THEME_GIT_PROMPT_PREFIX="%F{yellow}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{red}*%f"
ZSH_THEME_GIT_PROMPT_CLEAN=""
