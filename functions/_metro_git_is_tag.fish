function _metro_git_is_tag
    _metro_git_is_detached_head && command git describe --tags --exact-match HEAD 2>/dev/null > /dev/null
end
