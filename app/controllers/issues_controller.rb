class IssuesController < ApplicationController

  get '/issues' do
    @issues = Issue.all
    erb :'issues/index'
  end

  get '/issues/:id' do
    @issue = Issue.find(params[:id])
    erb :'issues/show'
  end




end