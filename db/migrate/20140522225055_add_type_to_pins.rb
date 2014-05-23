class AddTypeToPins < ActiveRecord::Migration
  def change
    add_column :pins, :type_id, :integer,             :null => false

    add_index :pins, :type_id
  end
end
