require 'omniauth'
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Icis < OmniAuth::Strategies::OAuth2
      option :client_options, { :site => 'https://icis-identity-example.herokuapp.com' }

      uid { raw_info["id"] }

      info { { :email => raw_info["email"] } }

      def authorize_params
        super.tap do |params|
          if request.params['state']
            params[:state] = request.params['state']

            session['omniauth.state'] = params[:state]
          end
        end
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed
      end
    end
  end
end
