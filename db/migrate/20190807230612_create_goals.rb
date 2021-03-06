class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :title, null: false
      t.text :details
      t.boolean :private, default: false, null: false
      t.boolean :completed, default: false, null: false
      t.integer :user_id, null: false
    
      t.timestamps
    end

    add_index :goals, :user_id
    add_index :goals, [:user_id, :title], unique: true
  end
end
