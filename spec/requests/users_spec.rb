# require 'rails_helper'

# RSpec.describe 'Users', type: :request do
#   describe 'GET /' do
#     before(:each) do
#       get '/'
#     end
#     it 'is a success' do
#       expect(response).to have_http_status(:ok)
#     end
#     it 'If a correct template was rendered' do
#      expect(response).to render_template(:index)
#     end

#     it 'If the response body includes correct placeholder text' do
#       expect(response.body).to include('app/views/users/index.html.erb')

#     end
#   end

#   describe 'GET /users/show' do
#     before(:each) do
#       get '/users/show'
#     end
#     it 'is a success' do
#       expect(response).to have_http_status(:ok)
#     end
#     it 'If a correct template was rendered' do
#       expect(response).to render_template('users/show')
#     end

#     it 'If the response body includes correct placeholder text' do
#       expect(response.body).to include('<h1>User#Name by  given username</h1>')
#     end
#   end
# end