module Types
  class TagInstanceType < Types::BaseObject
    field :id, Integer, null: false
    field :contact_id, Integer, null: false
    field :tag_id, Integer, null: false
    field :contact, Types::ContactType, null: false
    field :tag, Types::TagType, null: false
  end
end
