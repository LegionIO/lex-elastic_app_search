module Legion
  module Extensions
    module ElasticAppSearch
      module Runners
        module Search
          include Legion::Extensions::ElasticAppSearch::Helpers::Client

          def search(engine:, query:, **opts)
            client(opts).search(engine, query, opts)
          end

          def multi_search(engine:, queries: [], **opts)
            client(opts).multi_search(engine, queries)
          end

          def query_suggestion(engine:, query:, **opts)
            client(opts).query_suggestion(engine, query, opts)
          end

          def settings(engine:, **opts)
            client(opts).show_settings(engine)
          end

          def update_settings(engine:, settings:, **opts)
            client(opts).update_settings(engine, settings)
          end

          def reset_settings(engine:, **opts)
            client(opts).reset_settings(engine)
          end

          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
