require 'elastic-app-search'

module Legion
  module Extensions
    module ElasticAppSearch
      module Helpers
        module Client
          def client(**opts)
            Elastic::AppSearch::Client.new(
              host_identifier: find_setting('host', opts),
              api_key: find_setting('api_key', opts)
            )
          end
          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
