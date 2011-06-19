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
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "couchpack"
  gem.homepage = "http://github.com/kmalakoff/couchpack-gem"
  gem.license = "MIT"
  gem.summary = %Q{Couch document packing utility}
  gem.description = %Q{Use this gem to pack your couchdb document by stripping out the "_id" and "_rev" fields, and putting the "_rev" in a .version file. To be used with https://github.com/kmalakoff/phonegap-couchbase-xplatform}
  gem.email = "xmann.intl@gmail.com"
  gem.authors = ["Kevin Malakoff"]
  # Include your dependencies below. Runtime dependencies are required when using your gem,
  # and development dependencies are only needed for development (ie running rake tasks, tests, etc)
   gem.add_dependency 'json', '> 1.1.5'
   gem.add_dependency 'typhoeus', '~>0.2'
   gem.add_dependency 'thor', '~>0.14.0'
   gem.add_dependency 'couchwatcher', '~>0.1.0'
   gem.files.include 'lib/couchpack/cli.rb'
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

require 'rcov/rcovtask'
Rcov::RcovTask.new do |test|
  test.libs << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "couchpack #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
