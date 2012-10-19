class AddAttachmentAvatarToAddcousines < ActiveRecord::Migration
  def self.up
    change_table :addcousines do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :addcousines, :avatar
  end
end
