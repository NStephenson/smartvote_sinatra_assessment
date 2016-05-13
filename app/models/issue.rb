class Issue < ActiveRecord::Base

  has_many :reactions
  has_many :voters, through: :reactions
  has_many :candidates, through: :reactions


  def self.issue_categories
    categories = []
    all.map do |issue|
      if !categories.include?(issue.category)
        categories << issue.category
      end
    end
    categories
  end

  def find_reaction(person)
    if person.class == Candidate
      reactions.find do |reaction|
        reaction.candidate_id == person.id 
      end
    elsif person.class == Voter
      reactions.find do |reaction|
        reaction.voter_id == person.id 
      end
    end
  end


end