class AlterColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :tags, :tagType, :genre
  end
end
