# frozen_string_literal: true

require 'dry/system/container'

class Container < Dry::System::Container
  use :env, inferrer: -> { ENV.fetch('APP_ENV', :development).to_sym }
  use :zeitwerk, debug:  ENV.fetch('APP_ENV', :development).to_sym == :trace

  configure do |config|
    config.component_dirs.add 'app'
  end
end
