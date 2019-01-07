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

# say goodbye
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

# return the product of two numbers
  get "/multiply/:num1/:num2" do
    @product = (params[:num1].to_f*params[:num2].to_f).round
    "#{@product}"
  end
end
