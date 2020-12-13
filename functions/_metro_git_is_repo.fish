function _metro_git_is_repo
    command git rev-parse --git-dir > /dev/null 2>/dev/null || return 1
end
