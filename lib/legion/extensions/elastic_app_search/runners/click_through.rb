module Legion
  module Extensions
    module ElasticAppSearch
      module Runners
        module ClickThrough
          include Legion::Extensions::ElasticAppSearch::Helpers::Client

          def log(engine_name:, data:, **opts)
            client(opts).log_click_through(engine_name, data)
          end

          include Legion::Extensions::Helpers::Lex
        end
      end
    end
  end
end
