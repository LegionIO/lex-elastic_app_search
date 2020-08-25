module Legion
  module Extensions
    module ElasticAppSearch
      module Runners
        module Analytics
          include Legion::Extensions::ElasticAppSearch::Helpers::Client

          def top_queries(engine:, **opts)
            client(opts).get_top_queries_analytics(engine, opts)
          end

          def count(engine:, **opts)
            client(opts).get_count_analytics(engine, opts)
          end

          def top_clicks(engine:, **opts)
            client(opts).get_top_clicks_analytics(engine, opts)
          end

          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
