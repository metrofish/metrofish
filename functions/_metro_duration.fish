function _metro_duration -a ms
    set --query ms[1] || return

    set --local hours (math --scale=0 $ms / \(3600 \* 1000\))
    set --local mins (math --scale=0 $ms / \(60 \* 1000\) % 60)
    set --local secs (math --scale=0 $ms / 1000 % 60)

    test $hours -gt 0 && set --local --append out $hours"h"
    test $mins -gt 0 && set --local --append out $mins"m"
    test $secs -gt 0 && set --local --append out $secs"s"

    set --query out && echo $out || echo $ms"ms"
end