function fish_right_prompt
    set -l status_copy $status
    set -l status_code $status_copy
    set -l status_color 555
    set -l status_glyph
    set -l duration_glyph

    switch "$status_copy"
        case 0 "$__metro_status_last"
            set status_code
    end

    set -g __metro_status_last $status_copy

    if test "$status_copy" -eq 0
        set duration_glyph " "
    else
        set status_color red
        set status_glyph │
    end

    if test "$CMD_DURATION" -gt 250
        if test ! -z "$status_code"
            echo -sn (set_color $status_color) "($status_code)" (set_color normal)
            set status_glyph ┃
        end

        set -l duration (_metro_duration $CMD_DURATION)
        echo -sn (set_color $status_color) " ($duration) $duration_glyph" (set_color normal)

    else
        if test ! -z "$status_code"
            echo -sn (set_color $status_color) "$status_code " (set_color normal)
            set status_glyph ┃
        end
    end

    echo -sn (set_color $status_color) "$status_glyph" (set_color normal)
end
