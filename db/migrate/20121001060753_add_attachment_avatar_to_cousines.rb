class AddAttachmentAvatarToCousines < ActiveRecord::Migration
  def self.up
    change_table :cousines do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :cousines, :avatar
  end
end
