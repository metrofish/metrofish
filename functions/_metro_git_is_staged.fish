function _metro_git_is_staged
    _metro_git_is_repo && not command git diff --cached --no-ext-diff --quiet --exit-code 2>/dev/null
end
