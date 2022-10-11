# require 'rails_helper'

# RSpec.describe 'Posts', type: :request do
# #   before(:each) do
# #     get '/users/:id/posts'
# #   end

#   describe 'GET /id' do
# before(:example) { get "/users/#{@id}/posts" }
#   it 'Returs http success' do
#   expect(response).to have_http_status(:ok)
#  end

# #   describe 'GET /users/:user_id/posts' do
# #     it 'returns http success' do
# #       expect(response).to have_http_status(:success)
# #     end

#     it 'If a correct template was rendered.' do
#       expect(response).to render_template(:index)
#     end
#     it 'If the response body includes correct placeholder text.' do
#       expect(response.body).to include('Tom')
#     end
#   end

#   describe 'GET /users/:id/posts/show' do
#     before(:each) do
#       get '/users/:id/posts/show'
#     end
#     it 'returns http success' do
#       expect(response).to have_http_status(:success)
#     end
#     it 'If a correct template was rendered.' do
#       expect(response).to render_template(:show)
#     end
#     it 'If the response body includes correct placeholder text.' do
#       expect(response.body).to include('Post # by user name')
#     end
#   end
# end
