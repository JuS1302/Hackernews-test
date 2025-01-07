class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.text :title
      t.string :type
      t.text :url
      t.integer :score
      t.string :author

      t.timestamps
    end
  end
end
