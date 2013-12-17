#!/bin/sh

if [ -x /usr/bin/upower ]; then
    upower -i /org/freedesktop/UPower/devices/battery_BAT0 | awk '
    $1 == "state:" && $2 == "fully-charged" { full = 1 }
    $1 == "state:" && $2 == "charging" { charging = 1 }
    $1 == "energy-full:" { capacity = $2 }
    $1 == "energy-rate:" { rate = $2 }
    $1 == "energy:" { rem = $2 }
    END {
        if (full)
            printf "[//} "
        else if (rate > 0) {
            printf "["
            if (charging) {
                printf "~"
                h = (capacity - rem) / rate
            }
            else
                h = rem / rate
            hours = int(h)
            minutes = int((h - hours) * 60)
            printf "%d:%02d} ", hours, minutes
        }
        else
            printf "[-?-} "
    }'
elif [ -x /usr/sbin/ioreg ]; then
    /usr/sbin/ioreg -r -n AppleSmartBattery | awk '
    /FullyCharged/ { if ($3 ~ /Yes/) full = 1 }
    /IsCharging/ { if ($3 ~ /Yes/) charging = 1 }
    /TimeRemaining/ { remaining = $3 }
    END {
        if (full)
            printf "[//} "
        else {
            printf "["
            if (charging)
                printf "~"
            hours = int(remaining / 60)
            minutes = remaining % 60
            printf "%d:%02d} ", hours, minutes
        }
    }'
fi
