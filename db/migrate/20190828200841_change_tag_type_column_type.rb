class ChangeTagTypeColumnType < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      CREATE TYPE tag_types AS ENUM ('location', 'company', 'school', 'hobby', 'event', 'custom');
      ALTER TABLE tags ALTER COLUMN type TYPE tag_types USING type::tag_types;
    SQL
  end

  def down
    execute <<-SQL
      DROP TYPE tag_types;
    SQL
    remove_column :tags, :type, :string # Previous type
  end
end
