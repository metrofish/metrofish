function _metro_pwd_is_home
    switch "$PWD"
        case ~{,/\*}
          return 0
        case \*
          return 1
    end
end