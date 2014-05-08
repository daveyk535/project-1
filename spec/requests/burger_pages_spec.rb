require 'spec_helper'

describe "BurgerPages" do
  it 'gets a success response from the home page' do
    get '/'
    expect(response).to eq(200)
  end
end

# describe "Todos Management" do 

#   describe 'creating a new todo' do
#     it 'renders form and creates todo' do
#       get '/todos/new'
#       expect(response).to render_template(:new)

#       post "/todos", todo: {title: "My Todo", description: "My description"}

#       expect(response).to redirect_to( assigns(:todo) )
#       follow_redirect!

#       expect(response).to render_template(:show)
#       expect(response.body).to include("My Todo", "My description")
#     end
# end

  
# end
