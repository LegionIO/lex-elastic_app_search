module Legion
  module Extensions
    module ElasticAppSearch
      module Runners
        module Curations
          include Legion::Extensions::ElasticAppSearch::Helpers::Client

          def create(engine:, **opts)
            client(opts).create_curation(engine, opts)
          end

          def get(engine:, curation:, **opts)
            client(opts).get_curation(engine, curation)
          end

          def list(engine:, **opts)
            client(opts).list_curations(engine)
          end

          def update(engine:, curation:, **opts)
            client(opts).update_curation(engine, curation, opts)
          end

          def destroy(engine:, curation:, **opts)
            client(opts).destroy_curation(engine, curation)
          end

          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
