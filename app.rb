require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get '/' do
    'Hello'
  end

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
    @user = params[:name]
      "Goodbye, #{@user}."
    # end.first
    # erb :'/goodbye/show.html'
  end

  get '/multiply/:num1/:num2' do
        # binding.pry
    @a = params[:num1].to_i
    @b = params[:num2].to_i
    # convert instance variable key values (num1/num2) to integers above, back to string below after multiplication
    @c = @a * @b
    "#{@c}"

  end

end
