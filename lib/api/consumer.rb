# Libs/Gems required
require 'json'
require 'curl'
require 'rest_client'

# It GEM files
files = [:version, :connector]
files.each { |f| require "api/consumer/#{f}" }

# The API::Consumer module is a config part, like set a proxy to test it
module API
  module Consumer

  end
end
