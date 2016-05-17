class CandidatesController < ApplicationController

  get '/candidates' do
    @candidates = Candidate.all
    erb :'candidates/index'
  end

  get '/candidates/:id' do
    @candidate = Candidate.find(params[:id])
    erb :'candidates/show'
  end
  
end