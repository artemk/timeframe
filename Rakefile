require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "timeframe"
    gem.summary = %Q{Date intervals}
    gem.description = %Q{A Ruby class for describing and interacting with timeframes.}
    gem.email = "andy@rossmeissl.net"
    gem.homepage = "http://github.com/rossmeissl/timeframe"
    gem.authors = ["Andy Rossmeissl", "Seamus Abshere", "Derek Kastner"]
    gem.add_development_dependency "rspec", ">= 1.2.9"
    gem.add_dependency 'activesupport', '>2.3.8'
    gem.add_dependency 'andand'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'spec/rake/spectask'
Spec::Rake::SpecTask.new(:spec) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.spec_files = FileList['spec/**/*_spec.rb']
end

Spec::Rake::SpecTask.new(:rcov) do |spec|
  spec.libs << 'lib' << 'spec'
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
end

task :spec => :check_dependencies

task :default => :spec

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "timeframe #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
