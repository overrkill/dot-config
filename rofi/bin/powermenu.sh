#!/bin/bash

ols=("shutdown" "reboot" "logout")
opts=""
for i in ${ols[@]}
do
   opts+="${i}\n"
done
opts+="exit"
chosen=$(echo -e $opts | rofi -dmenu -theme /home/abhi/.config/rofi/powermenu.rasi )

case $chosen in
  "${ols[0]}")
    systemctl poweroff
    yn=$(echo -e "yes\nNo" | rofi -dmenu -theme /home/abhi/.config/rofi/powermenu.rasi )
    if [ $yn == "yes" ]
    then
      systemctl poweroff
    else
      echo exit
    fi
    ;;
  "${ols[1]}")
    yn=$(echo -e "yes\nNo" | rofi -dmenu -theme /home/abhi/.config/rofi/powermenu.rasi )
    if [ $yn == "yes" ]
    then
      systemctl reboot
    else
      echo exit
    fi
    ;;
  "${ols[2]}")
    yn=$(echo -e "yes\nNo" | rofi -dmenu -theme /home/abhi/.config/rofi/powermenu.rasi )
    if [ $yn == "yes" ]
    then
      echo yes
    else
      echo exit
    fi
    ;;
  *)
    echo "exit"
    ;;
esac

