#!/usr/bin/env bash

DIR="$HOME/.config"

rofi_command="rofi -theme $DIR/rofi/powermenu/powermenu.rasi"

uptime=$(uptime -p | sed -e 's/up //g')

shutdown="  Shut Down"
reboot="  Reboot"
lock="  Lock"
suspend="  Suspend"
logout="  Logout"

options="$shutdown\n$reboot\n$lock\n$logout"
_msg="Options  -  yes / y / no / n"

chosen="$(echo -e "$options" | $rofi_command -p "UP - $uptime" -dmenu -selected-row 2)"
case $chosen in
    $shutdown)
		ans=$($HOME/.config/rofi/confirm &)
		if [[ $ans == "yes" ]] || [[ $ans == "YES" ]] || [[ $ans == "y" ]] || [[ $ans == "Y" ]]; then
			systemctl poweroff
		elif [[ $ans == "no" ]] || [[ $ans == "NO" ]] || [[ $ans == "n" ]] || [[ $ans == "N" ]]; then
			exit
        else
			sh $HOME/.config/rofi/scripts/confirm
        fi
        ;;
    $reboot)
		ans=$($HOME/.config/rofi/confirm &)
		if [[ $ans == "yes" ]] || [[ $ans == "YES" ]] || [[ $ans == "y" ]] || [[ $ans == "Y" ]]; then
			systemctl reboot
		elif [[ $ans == "no" ]] || [[ $ans == "NO" ]] || [[ $ans == "n" ]] || [[ $ans == "N" ]]; then
			exit
        else
			sh $HOME/.config/rofi/confirm
        fi
        ;;
    $lock)
        sh ~/.config/i3lock/i3lock.sh
        ;;
    $suspend)
		ans=$($HOME/.config/rofi/confirm &)
		if [[ $ans == "yes" ]] || [[ $ans == "YES" ]] || [[ $ans == "y" ]] || [[ $ans == "Y" ]]; then
			mpc -q pause
			amixer set Master mute
			betterlockscreen --suspend
		elif [[ $ans == "no" ]] || [[ $ans == "NO" ]] || [[ $ans == "n" ]] || [[ $ans == "N" ]]; then
			exit
        else
			sh $HOME/.config/rofi/confirm
        fi
        ;;
    $logout)
		ans=$($HOME/.config/rofi/confirm &)
		if [[ $ans == "yes" ]] || [[ $ans == "YES" ]] || [[ $ans == "y" ]] || [[ $ans == "Y" ]]; then
			i3-msg exit
		elif [[ $ans == "no" ]] || [[ $ans == "NO" ]] || [[ $ans == "n" ]] || [[ $ans == "N" ]]; then
			exit
        else
			sh $HOME/.config/rofi/confirm
        fi
        ;;
esac
