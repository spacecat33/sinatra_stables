class CreateUserHorses < ActiveRecord::Migration[5.1]
  def change
    create_table :user_horses do |t|
      t.integer :user_id
      t.integer :horse_id

      t.timestamps null: false
    end
  end
end
