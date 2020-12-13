function _metro_git_ahead -a ahead behind diverged none
    command git rev-list --count --left-right "@{upstream}...HEAD" 2>/dev/null | command awk "
        /^0\t0/         { print \"$none\"       ? \"$none\"     : \"\";     exit 0 }
        /^[0-9]+\t0/    { print \"$behind\"     ? \"$behind\"   : \"-\";    exit 0 }
        /^0\t[0-9]+/    { print \"$ahead\"      ? \"$ahead\"    : \"+\";    exit 0 }
        //              { print \"$diverged\"   ? \"$diverged\" : \"±\";    exit 0 }
    "
end
