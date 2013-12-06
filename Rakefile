# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'
require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name = "hubot_notify"
  gem.homepage = "http://github.com/brianredbeard/hubot_notify"
  gem.license = "GPL-3"
  gem.summary = %Q{A plugin to send Foreman notifications to hubot}
  gem.description = %Q{This plugin for Foreman uses the native httpd-post-say
      plugin provided by hubot.}
  gem.email = "redbeard@redhat.com"
  gem.authors = ["Greg Sutcliffe", "Brian Harrington"]
  gem.version = "0.0.4"
  gem.files = [
    "Gemfile",
    "Gemfile.lock",
    "README.md",
    "Rakefile",
    "app/controllers/hubot_notify/unattended_controller_extensions.rb",
    "lib/hubot_notify.rb",
    "lib/hubot_notify/engine.rb"
  ]
  gem.require_paths = ["lib"]
  gem.rubygems_version = "1.8.24"

  # dependencies defined in Gemfile
end

task :default => :test
