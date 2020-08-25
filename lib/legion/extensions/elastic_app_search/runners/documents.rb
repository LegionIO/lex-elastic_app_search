module Legion
  module Extensions
    module ElasticAppSearch
      module Runners
        module Documents
          include Legion::Extensions::ElasticAppSearch::Helpers::Client

          def create(engine:, documents:, **opts)
            client(opts).index_documents(engine, documents)
          end

          def update(engine:, documents:, **opts)
            client(opts).update_documents(engine, documents)
          end

          def get(engine:, document_ids:, **opts)
            client(opts).get_documents(engine, document_ids)
          end

          def list(engine:, **opts)
            client(opts).list_documents(engine)
          end

          def delete(engine:, document_ids:, **opts)
            client(opts).destroy_documents(engine, document_ids)
          end

          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
