#!/usr/bin/env bash

case "$1" in
    logout)
        i3-msg exit
        ;;
    suspend)
        systemctl suspend
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    poweroff)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 [logout|suspend|hibernate|reboot|poweroff]"
        exit 2
esac

exit 0
