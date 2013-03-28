require 'omniauth'
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Icis < OmniAuth::Strategies::OAuth2
      option :name, "ICIS"

      option :client_options, { :site => 'https://icis-identity-example.herokuapp.com' }
    end
  end
end
