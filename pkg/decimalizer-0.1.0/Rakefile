require 'rake'
require 'spec/rake/spectask'
require 'echoe'
require 'rubygems'

desc 'Default: run specs.'
task :default => :spec

desc 'Run the specs'
Spec::Rake::SpecTask.new(:spec) do |t|
  t.spec_opts = ['--colour --format progress --loadby mtime --reverse']
  t.spec_files = FileList['spec/**/*_spec.rb']
end


Echoe.new('decimalizer', '0.1.0') do |p|
  p.description    = "Create virtualised decimal attributes for a monetary value stored as an int pence / cents."
  p.url            = "http://github.com/miletbaker/decimalizer"
  p.author         = "Jon Baker. Go Tripod Ltd"
  p.email          = "jon@gotripod.com"
  p.ignore_pattern = ["tmp/*", "script/*", "spec/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
