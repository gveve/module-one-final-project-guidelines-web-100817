#Migration to initialize users table in db
class CreateUser < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :sign
    end
  end
end
