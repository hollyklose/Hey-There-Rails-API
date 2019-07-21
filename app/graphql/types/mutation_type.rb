module Types
  class MutationType < Types::BaseObject
    field :create_contact, mutation: Mutations::CreateContact
  end
end
