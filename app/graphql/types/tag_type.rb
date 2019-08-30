module Types
  class TagType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :custom_tag_description, String, null: true
    field :genre, TypeCategory, null: false
    field :user, Types::UserType, null: false
    field :user_id, Integer, null: false
  end
end
