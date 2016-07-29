class Candidate < ActiveRecord::Base

  has_many :reactions
  has_many :voters, through: :reactions
  has_many :issues, through: :reactions


  def issues_for
    reactions.each_with_object([]) do |reaction, arr|
      if reaction.agreement > 3
        arr << reaction.issue
      end
    end
  end

  def issues_against
    reactions.each_with_object([]) do |reaction, arr|
      if reaction.agreement < 3
        arr << reaction.issue
      end
    end
  end



end