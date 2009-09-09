# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{decimalizer}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jon Baker. Go Tripod Ltd"]
  s.date = %q{2009-09-09}
  s.description = %q{Create virtualised decimal attributes for a monetary value stored as an int pence / cents.}
  s.email = %q{jon@gotripod.com}
  s.extra_rdoc_files = ["README.md", "lib/decimalizer.rb", "tasks/decimalizer_tasks.rake"]
  s.files = ["README.md", "Rakefile", "init.rb", "install.rb", "lib/decimalizer.rb", "tasks/decimalizer_tasks.rake", "uninstall.rb"]
  s.homepage = %q{http://github.com/miletbaker/decimalizer}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Decimalizer", "--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{decimalizer}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Create virtualised decimal attributes for a monetary value stored as an int pence / cents.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
