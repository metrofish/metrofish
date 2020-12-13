function _metro_segment_close
    if test ! -z "$segment"
        printf "$segment "
        set segment
        set segment_color
    end
    set_color normal
end