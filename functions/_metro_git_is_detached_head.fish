function _metro_git_is_detached_head
    command git symbolic-ref --quiet HEAD >/dev/null 2>&1 && test $status = 1
end
