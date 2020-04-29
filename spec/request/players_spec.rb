# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Player API', :type => :request do

  # TODO: try to be as 'http resourcful' as possible so you can extract all these specs into shared
  # examples!

  # TODO: try to encapsulate ALL of the standard CRUD endpoint specs into liner!
  # it_behaves_like 'resource endpoint', '/player'

  # nearly all access will need too be authenticated / authorized. so should be poossible...

  describe "get /players" do
    context "when player is logged in" do
      # TODO: ...

      it "returns all the players" do
        # TODO: ....

      end
    end

    context "when player is not logged in" do
      # TODO: ....

      it "returns Unauthorized" do
        # TODO: ....
      end
    end
  end

  # other endpoints, show, create, update, destroy

  

  # example code from another app...
  # include RequestSpecHelper
  # include CommonUtils

  # let!(:users) { create_list(:user, 9) }
  # let!(:user) { create(:user, :sub_claim => valid_jwt_sub_claim) }
  # let(:user_id) { user.id }
  # let(:other_user_id) { users.first.id }

  # let!(:user_update_params) { { :first_name => 'new_name_here' } }

  # let(:valid_attributes) do
  #   {
  #     :first_name => 'Erny',
  #     :last_name => 'Monk',
  #     :email => 'erne.monk@fake.com',
  #     :gender => 'm',
  #     :birthday => (365 * 24).days.ago,
  #     :language => 'eng',
  #     :currency => 'eur',
  #     :user_lonlat => 'POINT (114.2219923 22.3129115)',
  #     :about_you => 'This little piece here is just an example of a description that is needed in'\
  #                   ' order to satisfy this constraint. It is a minimum of 150 characters and'\
  #                   ' maximum of 1000. ',
  #     :marketing_promotion => 'rejected'
  #   }
  # end

  # let(:invalid_attributes) do
  #   valid_attributes.delete(:last_name)
  #   valid_attributes
  # end

  # describe 'GET /api/v1/users' do
  #   before { get '/api/v1/users' }

  #   it 'returns users' do
  #     # Note `json` is a custom helper to parse JSON responses
  #     expect(json).not_to be_empty
  #     expect(json.size).to eq(10)
  #     expect(response).to have_http_status(:ok)
  #   end
  # end

  # describe 'GET /api/v1/users/:id' do
  #   before { get "/api/v1/users/#{user_id}" }

  #   context 'when the record exists' do
  #     it 'returns the user' do
  #       expect(json).not_to be_empty
  #       expect(json['id']).to eq(user_id)
  #       expect(response).to have_http_status(:ok)
  #     end
  #   end

  #   context 'when the record does not exist' do
  #     let(:user_id) { 100 }

  #     it 'returns status code 404' do
  #       expect(response).to have_http_status(404)
  #       expect(JSON.parse(response.body)['message'])
  #         .to match(/Couldn't find User with 'id'=100/)
  #     end
  #   end
  # end

  # describe 'POST /api/v1/users' do
  #   context 'when the request is valid' do
  #     before do
  #       User.find_by(:sub_claim => valid_jwt_sub_claim).destroy

  #       post '/api/v1/users',
  #            :params => valid_attributes,
  #            :headers => { 'Authorization' => "Bearer #{valid_jwt}" }
  #     end

  #     it 'creates a user' do
  #       expect(response).to have_http_status(201)
  #       expect(User.all.count).to eq(10)
  #       expect(json['first_name']).to eq(valid_attributes[:first_name])
  #       expect(json['last_name']).to eq(valid_attributes[:last_name])
  #       expect(json['email']).to eq(valid_attributes[:email])
  #       expect(json['gender']).to eq(valid_attributes[:gender])
  #       expect(json['birthday']).to eq(valid_attributes[:birthday].to_date.to_s)
  #       expect(json['age']).to eq(calculate_age(valid_attributes[:birthday].to_date))
  #       expect(json['language']).to eq(valid_attributes[:language])
  #       expect(json['currency']).to eq(valid_attributes[:currency])
  #       expect(json['about_you'].length).to be > 150
  #       expect(json['sub_claim']).to eq(valid_jwt_sub_claim)
  #       expect(json['user_lonlat']).to eq(valid_attributes[:user_lonlat])
  #       expect(json['marketing_promotion']).to eq(valid_attributes[:marketing_promotion])
  #     end

  #     it 'sends a welcome email' do
  #       # Need to set up email expectations before sunning the post method, so the whole spec is run
  #       # again.

  #       # mail = double('mail')
  #       parameterized_mailer = double('parameterized_mailer')

  #       expect(UserMailer).to receive(:with).once.and_return(parameterized_mailer)
  #       # expect(parameterized_mailer).to receive(:welcome_email).once.and_return(mail)
  #       # expect(mail).to receive(:deliver_later).once
  #       expect(parameterized_mailer).to receive_message_chain(:welcome_email, :deliver_later)

  #       User.find_by(:sub_claim => valid_jwt_sub_claim).destroy

  #       post '/api/v1/users',
  #            :params => valid_attributes,
  #            :headers => { 'Authorization' => "Bearer #{valid_jwt}" }
  #     end
  #   end

  #   context 'when the request is invalid' do
  #     before do
  #       post '/api/v1/users',
  #            :params => invalid_attributes,
  #            :headers => { 'Authorization' => "Bearer #{valid_jwt}" }
  #     end

  #     it 'returns status code 422' do
  #       expect(response).to have_http_status(422)
  #       expect(JSON.parse(response.body)['message'])
  #         .to match("Validation failed: Last name can't be blank, Last name is too short (minimum is 2 characters)")
  #     end
  #   end
  # end

  # describe 'PUT /api/v1/users/:id' do
  #   context 'when the user is the user being updated' do
  #     context 'when the record exists' do
  #       before do
  #         put "/api/v1/users/#{user_id}",
  #             :params => user_update_params,
  #             :headers => { 'Authorization' => "Bearer #{valid_jwt}" }
  #       end

  #       it 'updates the record' do
  #         expect(response.body).to be_empty
  #         expect(response).to have_http_status(204)
  #       end

  #       it 'should have the new value' do
  #         expect(User.find(user_id).first_name).to eq(user_update_params[:first_name])
  #       end
  #     end
  #   end

  #   context 'when the user is not the user being updated' do
  #     context 'when the record exists' do
  #       before do
  #         put "/api/v1/users/#{other_user_id}",
  #             :params => user_update_params,
  #             :headers => { 'Authorization' => "Bearer #{valid_jwt}" }
  #       end

  #       it 'returns status code 401' do
  #         expect(response).to have_http_status(401)
  #       end
  #     end
  #   end
  # end

  # describe 'DELETE /api/v1/users/:id' do
  #   context 'when user is the user being deleted' do
  #     before do
  #       delete "/api/v1/users/#{user_id}",
  #              :headers => { 'Authorization' => "Bearer #{valid_jwt}" }
  #     end

  #     it 'returns status code 204' do
  #       expect(response.body).to be_empty
  #       expect(response).to have_http_status(204)
  #     end
  #   end

  #   context 'when user is not the user being deleted' do
  #     before do
  #       delete "/api/v1/users/#{other_user_id}",
  #              :headers => { 'Authorization' => "Bearer #{valid_jwt}" }
  #     end

  #     it 'returns status code 401' do
  #       expect(response).to have_http_status(401)
  #     end
  #   end
  # end

  # describe 'POST /api/v1/users/check-if-exists' do
  #   context 'when checking a user that exists' do
  #     before do
  #       post '/api/v1/users/check-if-exists',
  #            :headers => { 'Authorization' => "Bearer #{valid_jwt}" }
  #     end

  #     it 'returns status code 200' do
  #       expect(response.body).to be_empty
  #       expect(response).to have_http_status(204)
  #     end
  #   end

  #   context 'when checking a user that does not exists' do
  #     before do
  #       User.delete_all

  #       post '/api/v1/users/check-if-exists',
  #            :headers => { 'Authorization' => "Bearer #{valid_jwt}" }
  #     end

  #     it 'returns status code 401' do
  #       expect(response).to have_http_status(401)
  #     end
  #   end
  # end
end
