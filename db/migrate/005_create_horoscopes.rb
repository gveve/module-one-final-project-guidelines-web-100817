#Migration to initialize horoscopes table in db
class CreateHoroscopes < ActiveRecord::Migration[4.2]
  def change
    create_table :horoscopes do |t|
      t.integer :user_id
      t.integer :drink_id
      t.string :horoscope
    end
  end
end
