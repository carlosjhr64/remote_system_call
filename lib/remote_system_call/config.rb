module REMOTE_SYSTEM_CALL

  MUTE   = ' 2> /dev/null'
  DEAF   = ' > /dev/null'
  DUMB   = "#{DEAF}#{MUTE}"

  ER     = " &"

  # Default configuration. User can modify in:
  #    ~/.config/remote_system_call/config.json
  CONFIG = {
    # Zenity Commands
    :entry => 'zenity --entry --text=Arguments'+MUTE,
    :pwd   => 'zenity --entry --text=Password --hide-text'+MUTE,
    :info  => "zenity --info --text=$1"+DUMB+ER,
    :error => "zenity --error --text=$1"+DUMB+ER,
    :text  => "zenity --text-info --filename=$1"+DUMB,
    :list  => "zenity --list --text='Command:' --hide-header --column 'Command:' $1"+MUTE,
    # System Call Commands
    :commands => {
      'activate'   => 'gnome-screensaver-command --activate'+DUMB+ER,
      'deactivate' => 'gnome-screensaver-command --deactivate'+DUMB+ER,
      'pandora'    => 'gnome-open http://www.pandora.com'+DUMB+ER,
      'mute'       => 'pactl set-sink-mute 0 1'+DUMB+ER,
      'unmute'     => 'pactl set-sink-mute 0 0'+DUMB+ER,
      'vol100'     => 'amixer -c 0 set Master playback 100%'+DUMB+ER,
      'vol75'      => 'amixer -c 0 set Master playback 75%'+DUMB+ER,
      'vol50'      => 'amixer -c 0 set Master playback 50%'+DUMB+ER,
      'vol25'      => 'amixer -c 0 set Master playback 25%'+DUMB+ER,
      'unity'      => 'unity'+DUMB+ER, # When desktop freezes, sometimes this fixes.
      'time'       => 'espeak "`date "+It is %_I:%M %p"`"'+DUMB+ER,
      # This is for testing
      'testing123' => "echo '$1 $2 $3'"+ER,
    },
  }

end
