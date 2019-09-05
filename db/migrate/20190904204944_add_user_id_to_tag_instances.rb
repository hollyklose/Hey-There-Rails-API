class AddUserIdToTagInstances < ActiveRecord::Migration[5.2]
  def change
    add_reference :tag_instances, :user, foreign_key: true
  end
end
