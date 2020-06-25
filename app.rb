require "sinatra/base"

class Battle < Sinatra::Base

  run! if app_file == $0

  get "/" do
    erb :index
  end

  post "/names" do
    @names1 = params[:name1]
    @names2 = params[:name2]
    erb :play
  end
end
