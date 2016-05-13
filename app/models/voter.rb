class Voter < ActiveRecord::Base

  has_many :reactions
  has_many :issues, through: :reactions
  has_many :candidates, through: :reactions

  has_secure_password


end