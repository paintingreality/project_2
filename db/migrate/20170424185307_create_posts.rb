class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :make
      t.string :model
      t.string :picture
      t.integer :year
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
