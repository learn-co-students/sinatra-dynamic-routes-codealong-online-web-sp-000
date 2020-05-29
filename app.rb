require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
get "/goodbye/:name" do 
  @user_name =params[:name]
  "Goodbye, #{@user_name}."
end

get "/multiply/:num1/:num2" do
#dynamic route
  num1 =params[:num1].to_i 
  #params grabs the information from the user or the database
  # aways comes in as a string so we had to turn it into a intager 
  num2=params[:num2].to_i
  " multiplacation going on in our hash #{num1 * num2}."  
end

end






