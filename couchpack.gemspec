# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{couchpack}
  s.version = "0.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Kevin Malakoff"]
  s.date = %q{2011-06-19}
  s.default_executable = %q{couchpack}
  s.description = %q{Use this gem to pack your couchdb document by stripping out the "_id" and "_rev" fields, and putting the "_rev" in a .version file. To be used with https://github.com/kmalakoff/phonegap-couchbase-xplatform}
  s.email = %q{xmann.intl@gmail.com}
  s.executables = ["couchpack"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/couchpack",
    "couchpack.gemspec",
    "lib/couchpack.rb",
    "lib/couchpack/cli.rb",
    "test/helper.rb",
    "test/test_couchpack.rb"
  ]
  s.homepage = %q{http://github.com/kmalakoff/couchpack-gem}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.5.2}
  s.summary = %q{Couch document packing utility}
  s.test_files = [
    "test/helper.rb",
    "test/test_couchpack.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, ["> 1.1.5"])
      s.add_runtime_dependency(%q<typhoeus>, ["~> 0.2"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.14.0"])
      s.add_runtime_dependency(%q<couchwatcher>, ["~> 0.1.0"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
      s.add_runtime_dependency(%q<json>, ["> 1.1.5"])
      s.add_runtime_dependency(%q<typhoeus>, ["~> 0.2"])
      s.add_runtime_dependency(%q<thor>, ["~> 0.14.0"])
      s.add_runtime_dependency(%q<couchwatcher>, ["~> 0.1.0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<json>, ["> 1.1.5"])
      s.add_dependency(%q<typhoeus>, ["~> 0.2"])
      s.add_dependency(%q<thor>, ["~> 0.14.0"])
      s.add_dependency(%q<couchwatcher>, ["~> 0.1.0"])
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
      s.add_dependency(%q<rcov>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
      s.add_dependency(%q<json>, ["> 1.1.5"])
      s.add_dependency(%q<typhoeus>, ["~> 0.2"])
      s.add_dependency(%q<thor>, ["~> 0.14.0"])
      s.add_dependency(%q<couchwatcher>, ["~> 0.1.0"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<json>, ["> 1.1.5"])
    s.add_dependency(%q<typhoeus>, ["~> 0.2"])
    s.add_dependency(%q<thor>, ["~> 0.14.0"])
    s.add_dependency(%q<couchwatcher>, ["~> 0.1.0"])
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.5.2"])
    s.add_dependency(%q<rcov>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
    s.add_dependency(%q<json>, ["> 1.1.5"])
    s.add_dependency(%q<typhoeus>, ["~> 0.2"])
    s.add_dependency(%q<thor>, ["~> 0.14.0"])
    s.add_dependency(%q<couchwatcher>, ["~> 0.1.0"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end

