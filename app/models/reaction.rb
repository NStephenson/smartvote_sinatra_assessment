class Reaction < ActiveRecord::Base

  belongs_to :voter
  belongs_to :candidate
  belongs_to :issue


  def agreeance
    case agreement
    when 1
      "Strongly Disagree"
    when 2
      "Disagree"
    when 3
      "Neutral/Undeclared"
    when 4
      "Agree"
    when 5
      "Strongly Agree"
    end
  end


end