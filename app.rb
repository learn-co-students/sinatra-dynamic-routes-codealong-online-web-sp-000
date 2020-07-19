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
    "Goodbye, #{params[:name]}."
  end

  get '/multiply/:n1/:n2' do
    a = params[:n1].to_i
    b = params[:n2].to_i
    "#{a * b}"
  end

end