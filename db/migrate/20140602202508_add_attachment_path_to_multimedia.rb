class AddAttachmentPathToMultimedia < ActiveRecord::Migration
  def self.up
    change_table :multimedia do |t|
      t.attachment :path
    end
  end

  def self.down
    drop_attached_file :multimedia, :path
  end
end
