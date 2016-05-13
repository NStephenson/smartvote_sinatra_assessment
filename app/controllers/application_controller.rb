require './config/environment'


class ApplicationController < Sinatra::Base

  use Rack::Flash


  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "dondrumpf"
  end


  get '/' do
    erb :index
  end


  helpers do

    def current_user
      Voter.find_by(id: session[:id])
    end

    def logged_in?
      !!session[:id]
    end
  end


end