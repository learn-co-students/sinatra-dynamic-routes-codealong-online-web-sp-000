require_relative 'config/environment'

class App < Sinatra::Base

  get '/hello' do
    "Hello World!"
  end

  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # get "/goodbye/:firstname/:lastname" do
  #   @first_name = params[:firstname]
  #   @last_name = params[:lastname]
  #   "Goodbye #{@first_name.capitalize} #{@last_name.capitalize}! I hope to see you again tomorrow."
  # end

  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @num1 = params[:num1]
    @num2 = params[:num2]
    "The multiplication of #{@num1} x #{@num2} is #{@num1.to_i * @num2.to_i}."
  end
end