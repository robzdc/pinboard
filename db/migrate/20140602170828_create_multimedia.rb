class CreateMultimedia < ActiveRecord::Migration
  def change
    create_table :multimedia do |t|
      t.string :path
      t.string :caption,		:limit => 130
      t.integer :order,			:null => false
      t.integer :pin_id,		:null => false

      t.timestamps
    end

    add_index :multimedia, :pin_id
  end
end
