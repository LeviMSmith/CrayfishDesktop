if status is-interactive
    set -g fish_greeting

    #Colors
    set -l color_secondary E4F0FB

    set -g fish_color_normal $color_secondary
    set -g fish_color_user $color_secondary
    set -g fish_color_cwd $color_secondary

    set -g fish_color_error D0679D
    set -g fish_color_quote 767C9D
end
