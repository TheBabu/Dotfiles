#Autostart for i3

if ! pgrep -x discord >/dev/null
then discord &
fi

if ! pgrep -x kalu >/dev/null
then kalu &
fi

if ! pgrep -x blueman-applet >/dev/null
then blueman-applet &
fi

if ! pgrep -x nm-applet >/dev/null
then nm-applet &
fi

if ! pgrep -x xfce4-volumed-p >/dev/null
then xfce4-volumed-pulse &
fi

if ! pgrep -x xfce4-clipman >/dev/null
then xfce4-clipman &
fi

if ! pgrep -x xcompmgr -c -f -n >/dev/null
then xcompmgr -c -f -n &
fi

