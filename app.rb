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
  get '/medicines/:id' do
    @medicine = all_the_medicines.select do |medicine|
      medicine.id == params[:id]
    end.first
    erb :'/medicines/show.html'
  end
  
  get '/goodbye/:name' do
    @name = params[:name]
    "Goodbye, #{@name}."
  end
  
  get '/multiply/:num1/:num2' do
    @num1 = params[:num1].to_i 
    @num2 = params[:num2].to_i
    # binding.pry
    product = "#{@num1 * @num2}" 
  end

end