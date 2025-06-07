{pkgs}:
pkgs.writeShellScriptBin "change-wallpaper" ''
  WALLPAPERS="$HOME/.config/wallpapers"

  if [ -z "$1" ]; then
    time=10
  else
    time=$1
  fi

  if ! pgrep -x "swww-daemon" > /dev/null
  then
    swww-daemon &
  fi

  while true
  do
    for wallpaper in "$WALLPAPERS"/*
    do
      swww img "$wallpaper" --transition-type center --transition-step 40 --transition-fps 60
      sleep "$time"
    done
  done
''
