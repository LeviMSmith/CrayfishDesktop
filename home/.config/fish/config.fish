if status is-interactive
    #Fish settings
    set -g fish_greeting

    #Colors
    set -l color_secondary E4F0FB

    set -g fish_color_normal $color_secondary
    set -g fish_color_user $color_secondary
    set -g fish_color_cwd $color_secondary

    set -g fish_color_error D0679D
    set -g fish_color_quote 767C9D

    #Environment variables
    set -g TERMINAL kitty
    set -g EDITOR nvim

    #Aliases
    alias ls='ls --color=auto'
    alias ll='ls --color=auto -la'
    alias py='python3'
    alias ping='ping -c4'

    alias nnn='nnn -de'

    alias clear='clear && neofetch'
    

    #Commands to run on startup
    neofetch
end
