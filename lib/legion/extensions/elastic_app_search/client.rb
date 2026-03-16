# frozen_string_literal: true

require_relative 'helpers/client'
require_relative 'runners/analytics'
require_relative 'runners/click_through'
require_relative 'runners/curations'
require_relative 'runners/documents'
require_relative 'runners/engines'
require_relative 'runners/schemas'
require_relative 'runners/search'
require_relative 'runners/synonyms'

module Legion
  module Extensions
    module ElasticAppSearch
      class Client
        include Runners::Analytics
        include Runners::ClickThrough
        include Runners::Curations
        include Runners::Documents
        include Runners::Engines
        include Runners::Schemas
        include Runners::Search
        include Runners::Synonyms

        attr_reader :opts

        def initialize(host: 'http://localhost:3002', api_key: nil, **extra)
          @opts = { host: host, api_key: api_key, **extra }.compact
        end

        def client(**_override)
          Elastic::AppSearch::Client.new(
            host_identifier: @opts[:host],
            api_key:         @opts[:api_key]
          )
        end
      end
    end
  end
end
