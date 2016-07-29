require 'rack-flash'
class ReactionsController < ApplicationController

  use Rack::Flash


  get '/reactions' do
    @reactions = Reaction.all
    erb :'reactions/index'
  end

  get '/issues/:id/addreaction' do
    if logged_in?
      @issue = Issue.find(params[:id])
      erb :'reactions/new'
    else
      redirect '/login'
    end
  end

  post '/reactions' do
    if !params[:text].empty? && params[:agreement].to_i.between?(1,5) && logged_in?
      @reaction = Reaction.create(
        issue_id: params[:issue_id].to_i, 
        voter_id: current_user.id, 
        text: params[:text], 
        agreement: params[:agreement]
      )
      flash[:message] = "Reaction successfully created!"
      redirect '/reactions'
    end
    flash[:message] = "Invalid data!"
    redirect '/reactions'
  end

  get '/reactions/:id' do
    reaction = Reaction.find(params[:id])
    @issue = reaction.issue
    erb :'issues/show'
  end

  get '/reactions/:id/edit' do
    @reaction = Reaction.find(params[:id])
    if logged_in? && @reaction.voter_id == current_user.id
      erb :'reactions/edit'
    else
      redirect "/reactions/#{params[:id]}"
    end
  end

  patch '/reactions/:id' do
    @reaction = Reaction.find(params[:id])
    
    if !params[:text].empty? && params[:agreement].to_i.between?(1,5)
      @reaction.update(text: params[:text], agreement: params[:agreement].to_i)
      @reaction.save
      flash[:message] = "You've successfully flip-flopped on your position."
    else
      flash[:message] = "Invalid data. Please try again."
    end

    redirect "/reactions/#{params[:id]}/edit"
  end

  delete '/reactions/:id' do
    @reaction = Reaction.find(params[:id])

    if @reaction.voter.id == current_user.id
      @reaction.delete
      flash[:message] = "You've successfully deleted your position."
      redirect "/reactions"
    else
      flash[:message] = "You can't do that! That's not even your reaction!"
      redirect "/reactions"
    end
  end

end