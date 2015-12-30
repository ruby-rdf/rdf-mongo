source "http://rubygems.org"

gemspec

gem "rdf",            git: "git://github.com/ruby-rdf/rdf.git", branch: "develop"
gem "rdf-spec",       git: "git://github.com/ruby-rdf/rdf-spec.git", branch: "develop"

group :debug do
  gem "byebug", platforms: :mri
  gem "wirble"
end

platforms :rbx do
  gem 'rubysl', '~> 2.0'
  gem 'rubinius', '~> 2.0'
end
