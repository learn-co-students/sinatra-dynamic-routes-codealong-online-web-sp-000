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
    @user_name = params[:name]
<<<<<<< HEAD
    "Goodbye, #{@user_name}."
  end
  get '/multiply/:num1/:num2' do
  @num1 = params[:num1].to_i
  @num2 = params[:num2].to_i
  @total = (@num1 * @num2)
  # erb :multiply
  "The product is: #{@total}."

end
=======
    "Goodbye #{@user_name}!"
  end
>>>>>>> 5ae4c948d514c56d32dd9ffaccef2e8508b2fa7a
end
