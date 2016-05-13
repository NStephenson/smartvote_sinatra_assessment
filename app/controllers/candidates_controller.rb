class CandidatesController < ApplicationController

  get '/candidates' do
    @candidates = Candidate.all
    erb :'candidates/index'
  end
  
end