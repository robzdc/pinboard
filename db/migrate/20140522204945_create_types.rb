class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :name,         :null => false
      t.text :description

      t.timestamps
    end
  end
end
