class RemovePictureFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :picture, :string
  end
end
