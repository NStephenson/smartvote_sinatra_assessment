class Candidate < ActiveRecord::Base

  has_many :reactions
  has_many :voters, through: :reactions
  has_many :issues, through: :reactions


  def issues_for
    reactions.map do |reaction|
      if reaction.agreement > 3
        reaction.issue
      end
    end
  end

  def issues_against
    reactions.map do |reaction|
      if reaction.agreement < 3
        reaction.issue
      end
    end
  end



end