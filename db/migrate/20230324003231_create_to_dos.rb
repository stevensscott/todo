class CreateToDos < ActiveRecord::Migration[7.0]
  def change
    create_table :to_dos do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :deadline
      t.string :completed

      t.timestamps
    end
  end
end
