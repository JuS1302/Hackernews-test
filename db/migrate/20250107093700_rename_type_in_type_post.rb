class RenameTypeInTypePost < ActiveRecord::Migration[7.1]
  def change
    rename_column :posts, :type, :typepost
  end
end
