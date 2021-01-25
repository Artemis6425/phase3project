class CreateRuns < ActiveRecord::Migration[6.1]
  def change
    create_table :runs do |t|
      t.string :user_id
      t.string :game_id
      t.integer :hour
      t.integer :minute
      t.integer :second

      t.timestamps
    end
  end
end
