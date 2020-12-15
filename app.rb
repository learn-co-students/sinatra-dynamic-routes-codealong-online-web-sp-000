require_relative 'config/environment'
require 'pry'

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
    @name = params[:name]
    "Goodbye, #{@name}."
  end

  get '/multiply/:number1/:number2' do
    @number1 = params[:number1]
    @number2 = params[:number2]
    #binding.pry
    result = @number1.to_i * @number2.to_i
    result.to_s
  end
end