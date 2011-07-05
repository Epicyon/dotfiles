require 'rake'

task :symlink do
  symlink
end

namespace :symlink do
  task :force do
    symlink(true)
  end
end

def symlink(force = false)
  dir = File.dirname(__FILE__)
  force = force ? '-Ff' : ''

  Dir['*'].each do |file|
    next if %w[Rakefile README.md].include? file
    `ln -s #{force} #{File.join(dir, file)} #{ENV['HOME']}/.#{file}`
  end
end
