require 'legion/extensions/elastic_app_search/version'

module Legion
  module Extensions
    module ElasticAppSearch
      extend Legion::Extensions::Core

      def self.default_settings
        {
          host: 'http://localhost:3002'
        }
      end
    end
  end
end
