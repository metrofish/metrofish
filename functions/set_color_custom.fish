function set_color_custom
    set -l brgrey 666
    set -l brred red

    if contains -- brgrey (set_color -c)
        set brgrey "brgrey"
        set brred "brred"
    end

    set -U fish_color_normal                normal
    set -U fish_color_command               blue
    set -U fish_color_param                 cyan
    set -U fish_color_redirection           normal
    set -U fish_color_comment               $brred
    set -U fish_color_error                 red
    set -U fish_color_escape                cyan
    set -U fish_color_operator              cyan
    set -U fish_color_end                   green
    set -U fish_color_quote                 yellow
    set -U fish_color_autosuggestion        $brgrey
    set -U fish_color_valid_path            --underline
    set -U fish_color_cwd                   green
    set -U fish_color_cwd_root              red
    set -U fish_color_match                 cyan
    set -U fish_color_search_match          --background=$brgrey
    set -U fish_color_selection             --background=$brgrey
    set -U fish_pager_color_prefix          cyan
    set -U fish_pager_color_completion      white
    set -U fish_pager_color_description     $brgrey
    set -U fish_pager_color_progress        cyan
    set -U fish_color_history_current       cyan
end
