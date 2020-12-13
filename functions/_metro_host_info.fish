function _metro_host_info -a format
    set -l host (uname -n)
    command id -un | command awk -v host="$host" -v format="$format" '
        BEGIN { if (format == "") format = "user@host" }
        {
            user = $0
            if (!sub("usr", substr(user, 1, 1), format)) {
                sub("user", user, format)
            }
            len = split(host, host_info, ".")
            sub("host", host_info[1], format)
            sub("domain", len > 1 ? host_info[2] : "", format)
            print(format)
        }
    '
end