# frozen_string_literal: true

require_relative 'system/boot'

# something here to define the "middleware" to load for this function

def handler(event:, context:)
  puts "autoloaded: #{Container.keys}"
  puts "user service result: #{Container['services.user'].call(event, context)}"
end

# temporary invocation
handler(event: {}, context: {})
