require 'omniauth'
require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Icis < OmniAuth::Strategies::OAuth2
      option :client_options, { :site => 'https://icis-identity-example.herokuapp.com' }

      def authorize_params
        super.tap do |params|
          if request.params['state']
            params[:state] = request.params['state']

            session['omniauth.state'] = params[:state]
          end

          params[:scope] ||= DEFAULT_SCOPE
        end
      end
    end
  end
end
