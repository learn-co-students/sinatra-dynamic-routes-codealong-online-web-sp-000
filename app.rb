require_relative 'config/environment'

# in Sinatra a route is simply an HTTP method/verb that is paired with a URL-matching pattern.
#When your Sinatra application receives a request, it will match that route to a specific controller action that matches that URL pattern.
class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do #The key of the hash is determined by the symbol in the ur
                        # the associated value will be the content in the url provided by the user
                        #Once inside the controller action, we can access the value from the params hash, just like we would any other hash params[:name]
     @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:

  get '/goodbye/:name' do
    @name = params[:name]
    "Goodbye, #{name}."
  end

  get "/multiply/:num1/:num2" do
    @product = params[:num1].to_i * params[:num2].to_i
    "#{@product}"
  end

end