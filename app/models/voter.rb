class Voter < ActiveRecord::Base

  has_many :reactions
  has_many :issues, through: :reactions
  has_many :candidates, through: :reactions

  has_secure_password

  def best_candidate
    reactions.each do |reaction|
      
    end
  end


end