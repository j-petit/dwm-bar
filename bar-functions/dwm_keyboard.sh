#!/bin/sh

# A dwm_bar function that displays the current keyboard layout
# Joe Standring <git@joestandring.com>
# GNU GPLv3

# Dependencies: xorg-setxkbmap

dwm_keyboard () {
    printf "%s" "$SEP1"
    if [ "$IDENTIFIER" = "unicode" ]; then
        printf "⌨ %s" "$(xkb-switch)"
    else
        printf "KEY %s" "$(xkb-switch)"
    fi
    printf "%s\n" "$SEP2"
}

dwm_keyboard
