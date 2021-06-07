require_relative 'lib/legion/extensions/elastic_app_search/version'

Gem::Specification.new do |spec|
  spec.name          = 'lex-elastic_app_search'
  spec.version       = Legion::Extensions::ElasticAppSearch::VERSION
  spec.authors       = ['Esity']
  spec.email         = ['matthewdiverson@gmail.com']
  spec.summary       = 'LegionIO ElasticAppSearch'
  spec.description   = 'Connects Legion to Elastic App Search'
  spec.homepage      = 'https://github.com/LegionIO/lex-elastic_app_search'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata = {
    'bug_tracker_uri' => 'https://github.com/LegionIO/lex-elastic_app_search/issues',
    'changelog_uri' => 'https://github.com/LegionIO/lex-elastic_app_search/blob/master/CHANGELOG.md',
    'documentation_uri' => 'https://github.com/LegionIO/lex-elastic_app_search',
    'homepage_uri' => 'https://github.com/LegionIO/lex-elastic_app_search',
    'source_code_uri' => 'https://github.com/LegionIO/lex-elastic_app_search',
    'wiki_uri' => 'https://github.com/LegionIO/lex-elastic_app_search/wiki'
  }

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'elastic-app-search'
end
