function _metro_git_is_empty
    _metro_git_is_repo && test -z (command git rev-list -n 1 --all 2>/dev/null)
end
