# zsh-newuser-install {
    HISTFILE=~/.zsh_histfile
    HISTSIZE=1000
    SAVEHIST=1000
    bindkey -v
# }


# compinstall {
    # The following lines were added by compinstall

    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
    zstyle ':completion:*' original true
    zstyle ':completion:*' verbose true
    zstyle :compinstall filename "$DOTDIR/.zshrc"

    autoload -Uz compinit
    compinit -d $HOME/.cache/zsh/zcompdump
# }


# Powerlevel9K setup (must come before powerlevel is loaded) {
    DEFAULT_FOREGROUND=006 
    DEFAULT_BACKGROUND=235
    DEFAULT_COLOR=$DEFAULT_FOREGROUND

    POWERLEVEL9K_INSTALLATION_PATH=$ANTIGEN_BUNDLES/bhilburn/powerlevel9k
    POWERLEVEL9K_MODE='nerdfont-complete'

    # Powerline order
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user context dir vcs)
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time background_jobs anaconda)
    
    POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR="\uE0B4"
    POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR="%F{$(( $DEFAULT_BACKGROUND - 2 ))}|%f"
    POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR="\uE0B6"
    POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR="%F{$(( $DEFAULT_BACKGROUND - 2 ))}|%f"
    
    POWERLEVEL9K_CONTEXT_TEMPLATE="\uF109 %m"
    POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
    POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_CONTEXT_DEFAULT_BACKGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_CONTEXT_ROOT_BACKGROUND="$DEFAULT_BACKGROUND"

    POWERLEVEL9K_PROMPT_ON_NEWLINE=true
    POWERLEVEL9K_RPROMPT_ON_NEWLINE=false

    POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="╭"
    POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="╰\uF460 "

    # vcs
    POWERLEVEL9K_SHOW_CHANGESET=true
    POWERLEVEL9K_VCS_CLEAN_BACKGROUND="green"
    POWERLEVEL9K_VCS_CLEAN_FOREGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="yellow"
    POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="magenta"
    POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="$DEFAULT_BACKGROUND"

    # dir
    POWERLEVEL9K_SHORTEN_STRATEGY="truncate_with_folder_marker"
    POWERLEVEL9K_SHORTEN_FOLDER_MARKER=".git"
    POWERLEVEL9K_DIR_HOME_BACKGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_DIR_HOME_FOREGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_BACKGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="$DEFAULT_BACKGROUND"

    # status
    POWERLEVEL9K_STATUS_VERBOSE=true
    POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
    POWERLEVEL9K_STATUS_OK_FOREGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_STATUS_OK_FOREGROUND="green"
    POWERLEVEL9K_STATUS_OK_BACKGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_STATUS_OK_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"
    POWERLEVEL9K_STATUS_ERROR_FOREGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_STATUS_ERROR_FOREGROUND="red"
    POWERLEVEL9K_STATUS_ERROR_BACKGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_STATUS_ERROR_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"

    POWERLEVEL9K_HISTORY_FOREGROUND="$DEFAULT_FOREGROUND"

    POWERLEVEL9K_EXECUTION_TIME_ICON="\uf0e4"
    POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND="$DEFAULT_FOREGROUND"

    POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="$DEFAULT_FOREGROUND"

    DEFAULT_USER='uipo'
    POWERLEVEL9K_ROOT_ICON="\uf1e2" #  
    POWERLEVEL9K_ALWAYS_SHOW_USER=false
    POWERLEVEL9K_USER_DEFAULT_FOREGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_USER_DEFAULT_BACKGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_USER_ROOT_FOREGROUND="yellow"
    POWERLEVEL9K_USER_ROOT_BACKGROUND="$DEFAULT_BACKGROUND"

    POWERLEVEL9K_SSH_ICON="\uF489"  # 
    POWERLEVEL9K_SSH_FOREGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_SSH_BACKGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_SSH_BACKGROUND="$(( $DEFAULT_BACKGROUND + 2 ))"
    POWERLEVEL9K_SSH_BACKGROUND="$(( $DEFAULT_BACKGROUND - 2 ))"

    POWERLEVEL9K_HOST_LOCAL_FOREGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_HOST_LOCAL_BACKGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_HOST_REMOTE_FOREGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_HOST_REMOTE_BACKGROUND="$DEFAULT_BACKGROUND"

    POWERLEVEL9K_HOST_ICON_FOREGROUND="$DEFAULT_FOREGROUND"
    POWERLEVEL9K_HOST_ICON_BACKGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_HOST_ICON="\uF109" # 

    POWERLEVEL9K_LOAD_CRITICAL_BACKGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_LOAD_WARNING_BACKGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_LOAD_NORMAL_BACKGROUND="$DEFAULT_BACKGROUND"
    POWERLEVEL9K_LOAD_CRITICAL_FOREGROUND="red"
    POWERLEVEL9K_LOAD_WARNING_FOREGROUND="yellow"
    POWERLEVEL9K_LOAD_NORMAL_FOREGROUND="green"
    POWERLEVEL9K_LOAD_CRITICAL_VISUAL_IDENTIFIER_COLOR="red"
    POWERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
    POWERLEVEL9K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
# }


# antigen {
    source /usr/share/zsh/share/antigen.zsh 

    # Load the oh-my-zsh library
    antigen use oh-my-zsh

    # Bundles
    antigen bundle colored-man-pages
    antigen bundle colorize
    antigen bundle command-not-found
    antigen bundle docker
    antigen bundle git
    antigen bundle kubectl
    antigen bundle pip
    antigen bundle postgres
    antigen bundle python
    antigen bundle taskwarrior
    antigen bundle web-search
    antigen bundle zsh-users/zsh-autosuggestions
    antigen bundle zsh-users/zsh-completions
    antigen bundle zsh-users/zsh-history-substring-search
    antigen bundle zsh-users/zsh-syntax-highlighting
    antigen bundle peterhurford/git-it-on.zsh

    # Load the theme
    antigen theme bhilburn/powerlevel9k powerlevel9k

    # Tell Antigen that you're done
    antigen apply
# }

source $HOME/.aliases
