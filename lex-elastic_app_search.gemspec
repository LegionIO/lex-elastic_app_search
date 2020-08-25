require_relative 'lib/legion/extensions/elastic_app_search/version'

Gem::Specification.new do |spec|
  spec.name          = 'lex-elastic_app_search'
  spec.version       = Legion::Extensions::ElasticAppSearch::VERSION
  spec.authors       = ['Esity']
  spec.email         = ['matthewdiverson@gmail.com']

  spec.summary       = 'Legion ElasticAppSearch'
  spec.description   = 'Connects Legion to Elastic App Search'
  spec.homepage      = 'https://bitbucket.org/legion-io/lex-elastic_app_search'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://bitbucket.org/legion-io/lex-elastic_app_search'
  spec.metadata['changelog_uri'] = 'https://bitbucket.org/legion-io/lex-elastic_app_search/src/master/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'simplecov'

  spec.add_dependency 'elastic-app-search'
  spec.add_dependency 'legion-exceptions'
end
