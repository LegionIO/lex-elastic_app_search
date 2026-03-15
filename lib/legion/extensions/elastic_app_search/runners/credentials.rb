# frozen_string_literal: true

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

          def create(name:, credential_opts: {}, **opts)
            defaults = { type: 'private', read: true, write: false, access_all_engines: true, engines: [] }
            params = defaults.merge(credential_opts).merge(name: name)
            client(opts).create_credential(params)
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
