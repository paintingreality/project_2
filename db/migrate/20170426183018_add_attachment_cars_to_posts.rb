class AddAttachmentCarsToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :cars
    end
  end

  def self.down
    remove_attachment :posts, :cars
  end
end
