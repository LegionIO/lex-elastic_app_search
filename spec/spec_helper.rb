# frozen_string_literal: true

require 'bundler/setup'

module Legion
  module Extensions
    module Core; end

    module Helpers
      module Core; end
      module Logger; end

      module Lex
        def self.included(base)
          base.extend base if base.instance_of?(Module)
        end
      end
    end
  end
end

require 'legion/extensions/elastic_app_search'

RSpec.configure do |config|
  config.example_status_persistence_file_path = '.rspec_status'
  config.disable_monkey_patching!
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
