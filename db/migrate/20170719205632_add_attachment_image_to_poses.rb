class AddAttachmentImageToPoses < ActiveRecord::Migration[5.1]
  def self.up
    change_table :poses do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :poses, :image
  end
end
