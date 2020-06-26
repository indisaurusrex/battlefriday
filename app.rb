require "sinatra/base"
require "./lib/player.rb"
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    $game = Game.new(Player.new(params[:name1]),Player.new(params[:name2])) 
    redirect to("/play")
  end

  get "/play" do
    @name1 = $game.player1.name
    @name2 = $game.player2.name
    @p2hp = 60
    erb :play
  end

  get "/attacked" do
    $game.attack($game.player2)
    erb :attacked
  end

  run! if app_file == $0

end
