#!/bin/bash
# This file needs to be executed using `./workspace.sh 1` where 1 is the workspace number.

if [ "$#" -ne 1 ]; then
    # silently exit
    exit 0
fi

# Predefined constants
username=$USER
home=/home/$username
downloads=/path/to/downloads
software=/path/to/software

workspace=$1

case $workspace in
    1)
        /bin/kitty --class ws1 --name downloads0  --directory $downloads &
        /bin/kitty --class ws1 --name downloads1  --directory $downloads &

        /bin/kitty --class ws1 --name home0 --directory $home &
        ;;
    2)
        /bin/kitty --class ws2 --name mc0 --directory $downloads mc --nosubshell &
        ;;
    3)
        /bin/librewolf --setDefaultBrowser &
        /bin/brave &
        ;;
    4)
        /bin/vlc /path/to/playlist --start-paused &
        $software/Grayjay.Desktop-linux-x64-v*/Grayjay &
        ;;
    5)
        /bin/solaar -b solaar &
        /bin/easyeffects &
        /bin/kitty --class ws5 --name config0 --title config_cli --directory $home/.config &
        ;;
    6)
        $software/Beeper &
        /bin/thunderbird &
        /bin/telegram-desktop &
        $software/Discord/Discord &
        ;;
    7)
        ;;
    8)
        /bin/virt-manager &
        ;;
    9)
        /bin/steam &
        /bin/heroic &
        ;;
    0)
        /bin/code &
        /bin/obsidian &
        ;;
    *)
        exit 0
        ;;
esac
