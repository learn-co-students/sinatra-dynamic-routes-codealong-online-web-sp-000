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
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num_1/:num_2" do
    @product = params[:num_1].to_i * params[:num_2].to_i
    "So then you say that #{params[:num_1]} times #{params[:num_2]} equals #{@product}?"
  end

end