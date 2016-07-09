source "http://rubygems.org"

gemspec

gem "rdf",            github: "ruby-rdf/rdf", branch: "develop"
gem "rdf-spec",       github: "ruby-rdf/rdf-spec", branch: "develop"
gem 'rdf-isomorphic', github: "ruby-rdf/rdf-isomorphic", branch: "develop"

group :debug do
  gem "byebug", platforms: :mri
  gem "wirble"
end

platforms :rbx do
  gem 'rubysl', '~> 2.0'
  gem 'rubinius', '~> 2.0'
end
