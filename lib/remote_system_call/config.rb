module REMOTE_SYSTEM_CALL

  # Initial example configuration in the library's config directory.
  # User can modify in:
  #    ~/.config/remote_system_call/config.json
  CONFIG = {
    # How much is the client's clock allowed to differ(in seconds)?
    :max_time_error => 60,
    # System Call Commands
    :commands => { },
  }

end
