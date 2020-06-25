require "sinatra/base"

class Battle < Sinatra::Base

  run! if app_file == $0

  get "/" do
    "Testing infrastructure working!"
  end

end