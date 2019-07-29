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

  get '/goodbye/:name' do
    @name_ofthe_forgotten = params[:name]
    "Goodbye, #{@name_ofthe_forgotten}."
  end

  get '/multiply/:num1/:num2' do
    "#{params[:num1].to_i*params[:num2].to_i}"
  end
end
