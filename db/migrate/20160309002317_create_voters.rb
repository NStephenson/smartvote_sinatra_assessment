class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :name
      t.text :bio
      t.string :email
      t.string :password_digest
    end
  end
end
