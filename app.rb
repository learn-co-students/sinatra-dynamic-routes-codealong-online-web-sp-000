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
    "Goodbye, #{params[:name]}."
  end 
  
  get "/multiply/:num1/:num2" do 
    @num1 = params[:num1]
    @num2 = params[:num2]
    @result = @num1.to_i * @num2.to_i
    "#{@result}"
  end

end