class VotersController < ApplicationController

  get '/voters' do
    erb :'voters/index'
  end

  get '/signup' do
    if logged_in?
     redirect to '/reactions' 
   else
      erb :'voters/new'
    end
  end

  post '/signup' do
    if !Voter.find_by(username: params[:username]) && !Voter.find_by(email: params[:email])
      voter = Voter.new(params)
    else
      voter = Voter.new
    end
    if voter.save
      session[:id] = voter.id
      redirect '/reactions'
    else
      erb :'voters/new'
    end
  end


  get '/login' do
    if logged_in?
      redirect '/reactions'
    else
      erb :'voters/login'
    end
  end

  post '/login' do
    voter = Voter.find_by(username: params[:username]) 
    if !!voter && voter.authenticate(params[:password])
      session[:id] = voter.id
    end
    redirect "/reactions"
  end


end