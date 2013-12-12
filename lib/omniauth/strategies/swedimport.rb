require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Swedimport < OmniAuth::Strategies::OAuth2
      option :name, "swedimport"

      option :client_options, {
        :site => 'https://api.swedimport.se',
        :authorize_url => 'https://api.swedimport.se/oauth/authorize',
        :token_url => 'https://api.swedimport.se/oauth/access_token'
      }

      option :token_params, {
        :grant_type => "authorization_code"
      }

      def request_phase
        options[:response_type] ||= 'code'

        super
      end

      uid { raw_info['id'] }

      info do
        {
          'name' => raw_info['name']
        }
      end

      def raw_info
        @data ||= access_token.get('/v1/users/me')
      end
    end
  end
end