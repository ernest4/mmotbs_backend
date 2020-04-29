# frozen_string_literal: true

shared_examples 'resource endpoint' do |path|
  # TODO: ... copy paste code from main spec when ready
end

# example...
# shared_examples 'responsive endpoint' do |path|
#   android_user_agent = 'Mozilla/5.0 (Linux; U; Android 4.4.2; en-us; SCH-I535 Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30'
#   android_alt_user_agent = 'android_phone'
#   iphone_user_agent = 'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1'
#   ipad_user_agent = 'ipad'
#   ios_user_agent = 'ios'
#   windows_phone_user_agent = 'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; Microsoft; Lumia 950)'
#   simple_mobile_user_agent = 'mobile'
#   opera_mobi_user_agent = 'Opera/9.80 (Android 4.1.2; Linux; Opera Mobi/ADR-1305251841) Presto/2.11.355 Version/12.10'
#   opera_mini_user_agent = 'Opera/9.80 (J2ME/MIDP; Opera Mini/5.1.21214/28.2725; U; ru) Presto/2.8.119 Version/11.10'

#   mobile_user_agents = [
#     android_user_agent,
#     android_alt_user_agent,
#     iphone_user_agent,
#     ipad_user_agent,
#     ios_user_agent,
#     windows_phone_user_agent,
#     simple_mobile_user_agent,
#     opera_mobi_user_agent,
#     opera_mini_user_agent
#   ]

#   desktop_user_agent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36'

#   context 'when making request' do
#     context 'from mobile' do
#       mobile_user_agents.each do |user_agent|
#         it "detects #{user_agent}" do
#           get path, :headers => { :HTTP_USER_AGENT => user_agent }

#           expect(response).to have_http_status(200)
#           expect(response.body).to include('<div data-responsive="mobile">')
#         end
#       end
#     end

#     context 'from desktop' do
#       before { get path, :headers => { :HTTP_USER_AGENT => desktop_user_agent } }

#       it 'detects desktop' do
#         expect(response).to have_http_status(200)
#         expect(response.body).to include('<div data-responsive="desktop">')
#       end
#     end
#   end
# end
