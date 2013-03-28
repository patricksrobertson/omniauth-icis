require 'omniauth'

module Omniauth
  module Strategies
    class Icis
      include OmniAuth::Strategy

      option :client_options, {
            :site => 'https://icis-identity-example.herokuapp.com',
      }


      def request_phase
        redirect client.auth_code.authorize_url({:redirect_uri => callback_url}.merge(options.authorize_params))
      end
    end
  end
end
