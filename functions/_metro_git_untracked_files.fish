function _metro_git_untracked_files 
    _metro_git_is_repo && command git ls-files --others --exclude-standard | command awk '
        BEGIN {
            n = 0
        }

        { n++ }

        END {
            print n
            exit !n
        }
    '
end
