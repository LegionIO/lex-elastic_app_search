module Legion
  module Extensions
    module ElasticAppSearch
      module Runners
        module Engines
          include Legion::Extensions::ElasticAppSearch::Helpers::Client

          def list(**opts)
            client(opts).list_engines
          end

          def get(engine:, **opts)
            client(opts).get_engine(engine)
          end

          def destroy(engine:, **opts)
            client(opts).destroy_engine(engine)
          end

          def create(engine:, **opts)
            client(opts).create_engine(engine)
          end

          def create_meta(engine:, sources: [], **opts)
            client(opts).create_meta_engine(engine, sources)
          end

          def add_meta_source(engine:, sources: [], **opts)
            client(opts).add_meta_engine_sources(engine, sources)
          end

          def delete_meta_source(engine:, sources: [], **opts)
            client(opts).delete_meta_engine_sources(engine, sources)
          end

          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
