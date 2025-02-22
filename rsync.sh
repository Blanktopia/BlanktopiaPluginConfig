#!/bin/sh
rsync --delete -r BlanktopiaTweaks Moromoro Tsundoku weiwen@blanktopia.com:~/Docker/minecraft/minecraft/plugins
# rsync --progress -r weiwen@blanktopia.com:~/Docker/minecraft/minecraft/plugins/BlanktopiaTweaks weiwen@blanktopia.com:~/Docker/minecraft/minecraft/plugins/Moromoro weiwen@blanktopia.com:~/Docker/minecraft/minecraft/plugins/Tsundoku .
