module Types
  class MutationType < Types::BaseObject
    field :create_contact, mutation: Mutations::CreateContact
    field :delete_contact, mutation: Mutations::DeleteContact
    field :update_contact, mutation: Mutations::UpdateContact
  end
end
