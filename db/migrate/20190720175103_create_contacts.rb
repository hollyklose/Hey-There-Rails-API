class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :how_met
      t.integer :frequency
      t.integer :priority
      t.date :last_contacted
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
