class CreateRolls < ActiveRecord::Migration[4.2]
  def change
    create_table :rolls do |t|
      t.integer :lesson_id
      t.integer :member_id
      t.string :status
      t.integer :substitute_roll_id

      t.timestamps
    end
  end
end
