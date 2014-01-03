Gem::Specification.new do |s|

  s.name     = 'remote_system_call'
  s.version  = '0.0.0'

  s.homepage = 'https://github.com/carlosjhr64/remote_system_call'

  s.author   = 'CarlosJHR64'
  s.email    = 'carlosjhr64@gmail.com'

  s.date     = '2014-01-02'
  s.licenses = ['MIT']

  s.description = <<DESCRIPTION
Stuff about this gem.
DESCRIPTION

  s.summary = <<SUMMARY
Stuff about this gem.
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
data/VERSION
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
  s.requirements << 'system: linux/bash'
  s.requirements << 'ruby: ruby 2.0.0p247 (2013-06-27 revision 41674) [x86_64-linux]'
  s.requirements << 'zenity: 3.4.0'

end
