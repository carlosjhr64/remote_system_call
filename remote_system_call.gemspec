Gem::Specification.new do |s|

  s.name     = 'remote_system_call'
  s.version  = '0.0.0'

  s.homepage = 'https://github.com/carlosjhr64/remote_system_call'

  s.author   = 'CarlosJHR64'
  s.email    = 'carlosjhr64@gmail.com'

  s.date     = '2014-01-04'
  s.licenses = ['MIT']

  s.description = <<DESCRIPTION
Use your N900 to send system calls to your Ubuntu desktop.

Deactivate your screen lock.
Mute your audio.
Have the next song play on Rhythmbox.
DESCRIPTION

  s.summary = <<SUMMARY
Use your N900 to send system calls to your Ubuntu desktop.
SUMMARY

  s.extra_rdoc_files = ['README.rdoc']
  s.rdoc_options     = ["--main", "README.rdoc"]

  s.require_paths = ["lib"]
  s.files = %w(
History.txt
Manifest.txt
README.rdoc
TODO.txt
bin/remote_system_call
config/config.json
data/VERSION
examples/n900client
features/main.feature
features/step_definitions/main_steps.rb
lib/remote_system_call.rb
lib/remote_system_call/config.rb
lib/remote_system_call/remote_system_call.rb
lib/remote_system_call/version.rb
remote_system_call.gemspec
test/remote_system_call.rb
  )
  s.executables << 'remote_system_call'
  s.add_runtime_dependency 'user_space', '~> 0.2', '>= 0.2.0'
  s.add_runtime_dependency 'help_parser', '~> 1.1', '>= 1.1.0'
  s.add_development_dependency 'test-unit', '~> 2.5', '>= 2.5.5'
  s.requirements << 'ruby: ruby 2.0.0p247 (2013-06-27 revision 41674) [x86_64-linux]'
  s.requirements << 'zenity: 3.4.0'
  s.requirements << 'bash: GNU bash, version 4.2.25(1)-release (x86_64-pc-linux-gnu)'
  s.requirements << 'system: linux/bash'
  s.requirements << 'zenity in development: 3.4.0'

end
