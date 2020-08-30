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

  get "/goodbye/:name" do #receiving 
    @user_name = params[:name]  
                              #  argument object that is given to us with the server req. 
                              #   it is a hash, where :name becomes a key, while the info where
                              #   put ("milos") becomes a value and it sends the info back to
                              #   the server and the forward to the view (.erb) page
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    hello = @num1 * @num2
    "#{hello}"
  end

end