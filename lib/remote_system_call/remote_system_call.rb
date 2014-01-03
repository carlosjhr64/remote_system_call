module REMOTE_SYSTEM_CALL

  # Too trivial for it's own file?
  class ValidationError < StandardError
  end

  class RemoteSystemCall
    def self.digest(nonce, pwd)
      Digest::SHA256.hexdigest("#{nonce}#{pwd}")
    end

    def initialize(pwd)
      @pwd   = pwd
      @nonce = Time.now.to_i
      @exit  = false
    end

    def exit?
      @exit
    end

    def keys
      commands.keys
    end

    def call(nonce, digest, key, *args)
      nope! unless on_time?(nonce)
      nope! unless valid?(digest)
      case key
      when 'commands'
        return commands
      when 'exit'
        @exit = true
        return 'OK'
      else
        if command = commands[key]
          i=0
          while arg = args.shift
            nope! unless arg=~/^\w+$/
            i+=1
            command = command.gsub(/\$#{i}/, arg)
          end
          return 'OK' if system(command)
          return "ERROR(#{$CHILD_STATUS})"
        end
      end
      nope!
    end

    # following methods are private
    private

    def commands
      CONFIG[:commands]
    end

    def on_time?(nonce)
      now = Time.now.to_i
      return false if nonce < @nonce   or
                      nonce > now + 30 or
                      nonce < now - 30
      # We now know someone is trying to get in with a current nonce.
      # We don't let them reuse this nonce, or any priors.
      @nonce = nonce
      true
    end

    def valid?(digest)
      digest == RemoteSystemCall.digest(@nonce, @pwd)
    end

    def nope!(msg='Nope!')
      raise ValidationError, msg
    end

  end
end
