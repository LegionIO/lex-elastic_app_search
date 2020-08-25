module Legion
  module Extensions
    module ElasticAppSearch
      module Runners
        module Credentials
          include Legion::Extensions::ElasticAppSearch::Helpers::Client

          def list(current: 1, size: 20, **opts)
            client(opts).list_credentials(current: current, size: size)
          end

          def get(name:, **opts)
            client(opts).get_credential(name)
          end

          def create(name:, type: 'private', read: true, write: false, access_all_engines: true, engines: [], **opts)
            client(opts).create_credential(
              { name: name,
                type: type,
                read: read,
                write: write,
                access_all_engines: access_all_engines,
                engines: engines }
            )
          end

          def update(name:, **opts)
            client(opts).update_credential(name, opts)
          end

          def destroy(name:, **opts)
            client(opts).destroy_credential(name)
          end

          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
