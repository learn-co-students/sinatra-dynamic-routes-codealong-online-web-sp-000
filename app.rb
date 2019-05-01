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
      @user_name = params[:name]
      "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
      # first attempt
      # @product = params[:num1] * params[:num2]
      # "#{@product}"
      #=> sends a 200 status code (FAILED - 1)
      #=> displays the product of the two numbers in the route
      #=> is not hard-coded (FAILED - 2)

      # second attempt
      # params.each { |param| puts param * param }
      #=> sends a 200 status code (FAILED - 1)
      #=> displays the product of the two numbers in the route
      #=> is not hard-coded (FAILED - 2)

      #third attempt
      # @num1 = params[:num1]
      # @num2 = params[:num2]
      # @product = @num1 * @num2
      # "#{@product}"
      #=> sends a 200 status code (FAILED - 1)
      #=> displays the product of the two numbers in the route
      #=> is not hard-coded (FAILED - 2)

      # SOLUTION
      @product = params[:num1].to_i * params[:num2].to_i
      "#{@product}"
  end

end
