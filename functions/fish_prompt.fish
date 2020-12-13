function fish_prompt
    set -l last_status $status
    set -l pwd_info (_metro_pwd_info "/")
    set -l dir
    set -l base
    set -l base_color 888 brblack

    if test "$PWD" = ~
        set base "~"
    else if _metro_pwd_is_home
        set dir "~/"
    else
        if test "$PWD" != /
            set dir "/"
        end
        set base (set_color red)"/"
    end

    if test ! -z "$pwd_info[1]"
        set base "$pwd_info[1]"
    end

    if test ! -z "$pwd_info[2]"
        set dir "$dir$pwd_info[2]/"
    end

    if test ! -z "$pwd_info[3]"
        _metro_segment $base_color " $pwd_info[3] "
    end

    if set branch_name (
        command git symbolic-ref --short HEAD 2>/dev/null \
        || command git describe --tags --exact-match HEAD 2>/dev/null \
        || command git rev-parse --short HEAD 2>/dev/null
    )
        set -l git_color black green
        set -l git_glyph ""

        if _metro_git_is_staged
            set git_color black yellow

            if _metro_git_is_dirty
                set git_color $git_color white red
            end

        else if _metro_git_is_dirty
            set git_color white red

        else if _metro_git_is_touched
            set git_color white red
        end

        if _metro_git_is_detached_head
            set git_glyph "➤"

        else if _metro_git_is_stashed
            set git_glyph "╍╍"
        end

        set -l prompt
        set -l git_ahead (_metro_git_ahead "+ " "- " "+- ")

        if test "$branch_name" = master
            set prompt " $git_glyph $git_ahead"
        else
            set prompt " $git_glyph $branch_name $git_ahead"
        end

        if set -q git_color[3]
            _metro_segment "$git_color[3]" "$git_color[4]" "$prompt"
            _metro_segment black black
            _metro_segment "$git_color[1]" "$git_color[2]" " $git_glyph "
        else
            _metro_segment "$git_color[1]" "$git_color[2]" "$prompt"
        end
    end

    _metro_segment $base_color " $dir"(set_color white)"$base "

    if test ! -z "$SSH_CLIENT"
        set -l color bbb 222

        if test 0 -eq (id -u "$USER")
            set color red 222
        end

        _metro_segment $color (_metro_host_info " usr@host ")

    else if test 0 -eq (id -u "$USER")
        _metro_segment red 222 " \$ "
    end

    if test "$last_status" -ne 0
        _metro_segment red white (set_color -o)" ! "(set_color normal)

    else if jobs $argv | command awk '/^[0-9]+\t/ { print status = $1 } END { exit !status }' > /dev/null
        _metro_segment white 333 " %% "
    end

    if test "$theme_display_virtualenv" != 'no' && set -q VIRTUAL_ENV
        _metro_segment yellow blue " "(basename "$VIRTUAL_ENV")" "
    end

    if test "$theme_display_ruby" != 'no' && set -q RUBY_VERSION
        _metro_segment red fff " "(basename "$RUBY_VERSION")" "
    end

    if test "$fish_key_bindings" = "fish_vi_key_bindings"
      switch $fish_bind_mode
        case default
          _metro_segment white red "[N]"
        case insert
          _metro_segment black green "[I]"
        case replace-one
          _metro_segment yellow blue "[R]"
        case visual
          _metro_segment white magenta "[V]"
      end
    end

    _metro_segment_close
end
