# frozen_string_literal: true

module AuthSpecHelper
  extend ActiveSupport::Concern

  # WIIIIP
  
  # included do
  #   omniauth_userinfo = {
  #     'given_name' => 'Erny',
  #     'family_name' => 'Monk',
  #     'email' => 'erne.monk@fake.com',
  #     'sub' => 'testy_sub_claim_here'
  #   }
  #   OmniAuth.config.test_mode = true

  #   let(:unauthorized_string) do
  #     'You are not authorized to view the page you were looking for. (401)'
  #   end

  #   let(:omniauth_userinfo) { omniauth_userinfo }
  #   # let(:omniauth_raw_userinfo) { omniauth_raw_userinfo }

  #   # before do
  #   #   # OmniAuth.config.mock_auth[:default] = OmniAuth::AuthHash.new omniauth_raw_userinfo
  #   #   # get '/auth/auth0/callback'
  #   # end

  #   def omniauth_raw_userinfo(user)
  #     if user
  #       return {
  #         'extra' => {
  #           'raw_info' => {
  #             'given_name' => user.first_name,
  #             'family_name' => user.last_name,
  #             'email' => user.email,
  #             'sub' => user.sub_claim
  #           }
  #         }
  #       }
  #     end

  #     { 'extra' => { 'raw_info' => omniauth_userinfo } }
  #   end

  #   def sign_in(user: nil)
  #     OmniAuth.config.mock_auth[:default] = OmniAuth::AuthHash.new omniauth_raw_userinfo(user)
  #     get '/auth/auth0/callback'
  #   end

  #   def sign_out
  #     get '/auth/auth0/logout'
  #   end
  # end

  # # def logged_in_user_info(given_name: 'testy_name', family_name: 'testy_surname', email: 'testy_email')
  # #   {
  # #     'extra' => {
  # #       'raw_info' => {
  # #         'given_name' => given_name,
  # #         'family_name' => family_name,
  # #         'email' => email
  # #       }
  # #     }
  # #   }
  # # end
end
