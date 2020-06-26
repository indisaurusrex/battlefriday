require "sinatra/base"

class Battle < Sinatra::Base
  enable :sessions
  
  run! if app_file == $0

  get "/" do
    erb :index
  end

  post "/names" do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect to("/play")
  end

  get "/play" do
    @name1 = session[:name1]
    @name2 = session[:name2]
    @p2hp = 60
    erb :play
  end

  get "/attacked" do
    erb :attacked
  end
end
