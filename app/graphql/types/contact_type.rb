module Types
  class ContactType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :how_met, String, null: false
    field :frequency, Integer, null: false
    field :priority, Integer, null: false
    field :last_contacted, DateTimeType, null: false
    field :user, Types::UserType, null: false
    field :user_id, Integer, null: false
  end
end
