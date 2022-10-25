class CreateHorses < ActiveRecord::Migration[5.1]
  def change
    create_table :horses do |t|
      t.string :name
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
