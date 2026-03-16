# frozen_string_literal: true

require 'legion/extensions/elastic_app_search/version'
require 'legion/extensions/elastic_app_search/helpers/client'
require 'legion/extensions/elastic_app_search/runners/analytics'
require 'legion/extensions/elastic_app_search/runners/click_through'
require 'legion/extensions/elastic_app_search/runners/curations'
require 'legion/extensions/elastic_app_search/runners/documents'
require 'legion/extensions/elastic_app_search/runners/engines'
require 'legion/extensions/elastic_app_search/runners/schemas'
require 'legion/extensions/elastic_app_search/runners/search'
require 'legion/extensions/elastic_app_search/runners/synonyms'
require 'legion/extensions/elastic_app_search/client'

module Legion
  module Extensions
    module ElasticAppSearch
      extend Legion::Extensions::Core if Legion::Extensions.const_defined? :Core

      def self.default_settings
        {
          host: 'http://localhost:3002'
        }
      end
    end
  end
end
