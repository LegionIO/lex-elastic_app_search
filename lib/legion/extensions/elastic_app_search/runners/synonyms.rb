module Legion
  module Extensions
    module ElasticAppSearch
      module Runners
        module Synonyms
          include Legion::Extensions::ElasticAppSearch::Helpers::Client

          def create(engine:, synonyms: [], **opts)
            client(opts).create_synonym_set(engine, synonyms: synonyms)
          end

          def get(engine:, synonym:, **opts)
            client(opts).get_synonym_set(engine, synonym)
          end

          def list(engine:, current: 1, size: 20, **opts)
            client(opts).list_synonym_sets(engine, current: current, size: size)
          end

          def update(engine:, synonym:, synonyms: [])
            client(opts).update_synonym_set(engine, synonym, synonyms: synonyms)
          end

          def delete(engine:, synonym:, **opts)
            client(opts).destroy_synonym_set(engine, synonym)
          end

          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
