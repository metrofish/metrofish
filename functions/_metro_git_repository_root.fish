function _metro_git_repository_root
    _metro_git_is_repo && command git rev-parse --show-toplevel
end
