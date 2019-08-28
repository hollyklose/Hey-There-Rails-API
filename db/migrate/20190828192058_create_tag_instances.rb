class CreateTagInstances < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_instances do |t|
      t.references :contact, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
