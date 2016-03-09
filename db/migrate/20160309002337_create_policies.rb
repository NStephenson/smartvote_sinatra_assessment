class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.string :title
      t.text :description
      t.string :type
    end
  end
end
