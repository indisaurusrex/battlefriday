require "sinatra/base"
require "./lib/player.rb"

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    $p1 = Player.new(params[:name1])
    $p2 = Player.new(params[:name2])
    redirect to("/play")
  end

  get "/play" do
    @name1 = $p1.name
    @name2 = $p2.name
    @p2hp = 60
    erb :play
  end

  get "/attacked" do
    erb :attacked
  end

  run! if app_file == $0
  
end
