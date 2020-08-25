module Legion
  module Extensions
    module ElasticAppSearch
      module Runners
        module Schemas
          include Legion::Extensions::ElasticAppSearch::Helpers::Client

          def get(engine:, **opts)
            client(opts).get_schema(engine)
          end

          def update(engine:, field:, type:, **opts)
            update = {}
            update[field.to_sym] = type
            client(opts).update_schema(engine, update)
          end

          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
