function _metro_git_is_stashed
    command git rev-parse --verify --quiet refs/stash > /dev/null 2>/dev/null
end
