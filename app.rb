require "sinatra"
set :session_secret, "super secret"

class Battle < Sinatra::Base
  get "/" do
    "Battle1"
  end

  run! if app_file == $0
end