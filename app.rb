require_relative 'config/environment'

class App < Sinatra::Base
  get('/hello') {"Hello World!"}
  get("/hello/:name") {"Hello #{params[:name]}!"}
  get("/goodbye/:name") {"Goodbye, #{params[:name]}."}
  get("/multiply/:num1/:num2") {"#{params[:num1].to_i * params[:num2].to_i}"}
end
