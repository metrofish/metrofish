function _metro_git_is_dirty    
    _metro_git_is_repo && ! command git diff --no-ext-diff --quiet --exit-code 2>/dev/null
end
