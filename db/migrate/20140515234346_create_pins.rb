class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title,                    :limit => 70
      t.text :description
      t.integer :status,                  :default => 2, :limit => 1
      t.integer :user_id,                 :null => false
      t.integer :category_id,             :null => false

      t.timestamps
    end

    add_index :pins, :user_id
    add_index :pins, :category_id
  end
end
