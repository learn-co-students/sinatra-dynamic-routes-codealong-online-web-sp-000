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

  get "/goodbye/:name" do
    @person_name = params[:name]
    "Goodbye, #{@person_name}."
  end

  get "/multiply/:num1/:num2" do
    @number_1 = params[:num1].to_i
    @number_2 = params[:num2].to_i
    @number_output = @number_1 * @number_2
    @number_output.to_s
  end


end
