class CreateReactions < ActiveRecord::Migration
  def change
    create_table :reactions do |t|
      t.text :text
      t.integer :agreement
      t.integer :issue_id
      t.integer :candidate_id
      t.integer :voter_id
    end
  end
end
