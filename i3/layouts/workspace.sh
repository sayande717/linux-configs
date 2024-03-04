#!/bin/bash

if [ "$#" -ne 1 ]; then
    # silently exit
    exit 0
fi

# Predefined constants
username=$USER
home=/home/$username

workspace=$1

case $workspace in
    1)
        /bin/kitty --class ws1 --name home0 --title home --directory /dev/null &
        /bin/kitty --class ws1 --name root0 --title root --directory /dev/null &
        /bin/kitty --class ws1 --name hd00 --title hd0 --directory /dev/null &
        /bin/kitty --class ws1 --name downloads0 --title downloads --directory /dev/null &
        /bin/kitty --class ws1 --name root1 --title root --directory /dev/null &
        ;;
    2)
        /bin/kitty --class ws2 --name hd00 --title hd0 --directory /dev/null mc --nosubshell &
        ;;
    3)
        /bin/kitty --class ws3 --name home0 --title home --directory /dev/null &
        /bin/kitty --class ws3 --name hd00 --title hd0 --directory /dev/null &
        ;;
    4)
        /bin/kitty --class ws4 --name docs0 --title edit\ handbook --directory /dev/null nvim &
        /bin/ticktick &
        /bin/librewolf --new-window https://0.0.0.0/ &
        /bin/libreoffice --calc /dev/null &
        /bin/bitwarden-desktop &
        ;;
    5)
        /bin/librewolf --setDefaultBrowser &
        /bin/kitty --class ws5 --name downloads0 --title downloads --directory /dev/null &
        ;;
    6)
        /bin/spotify &
        /bin/easyeffects &
        /bin/solaar -b solaar &
        ;;
    7)
        /bin/virt-manager
        /bin/kitty --class ws7 --name software0 --title run\ software --directory /dev/null &
        ;;
    8)
        /bin/thunderbird --mail &
        librewolf --new-window "https://0.0.0.0/" &
        /dev/discord &
        /bin/telegram-desktop &
        /bin/element-desktop &
        ;;
    9)
        #/bin/steam-runtime &
        /bin/lutris &
        ;;
    0)
        /bin/kitty --class ws0 --name dev0 --title edit\ dev\ 0 --directory /dev/null nvim &
        /bin/kitty --class ws0 --name dev1 --title edit\ dev\ 1 --directory /dev/null nvim &
        ;;
    *)
        # silently exit
        exit 0
        ;;
esac
