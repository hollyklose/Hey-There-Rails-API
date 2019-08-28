class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.text :custom_tag_description
      t.text :name
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
