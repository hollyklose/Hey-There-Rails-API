module Types
  class TagInstanceType < Types::BaseObject
    field :id, ID, null: false
    field :contact_id, Integer, null: false
    field :tag_id, Integer, null: false
    field :contact, Types::ContactType, null: false
    field :tag, Types::TagType, null: false
    field :user_id, Integer, null: false
    field :user, Types::UserType, null: false
  end
end
