#To check what values can be passed to PROMPT check http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html 

PROMPT=""
#Comment out which ever fields you don't want
#Show user@host
PROMPT+='%F{magenta}%n@%m%f'
#Show date 
PROMPT+='%F{yellow}(%D %*)%f'
#Show error on wrong bash command
PROMPT+='%(?:%F{green}➜ :%F{red}➜ )%f'
#Show direcotry info. %~ shows full from home. %2~ shows last 2 directories. You can use any numeric value.
PROMPT+=' %F{cyan}%~%f'
#Show git specific things
PROMPT+='%{$reset_color%}%B$(git_prompt_info)$(git_prompt_status)%b '


ZSH_THEME_GIT_PROMPT_PREFIX="%F{blue}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=")"
ZSH_THEME_GIT_PROMPT_CLEAN=")%f%b%F{green}✔%f"

ZSH_THEME_GIT_PROMPT_ADDED="%F{green}✚%f"
ZSH_THEME_GIT_PROMPT_MODIFIED="%F{red}✗%f"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%F{yellow}?%f"
