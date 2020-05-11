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
    @userName = params[:name]
    "Goodbye, #{@userName}."
  end

  get "/multiply/:num1/:num2" do
    @one = params[:num1].to_i
    @two = params[:num2].to_i
    "#{@one*@two}"
  end
end