module Types
  class MutationType < Types::BaseObject
    field :create_contact, mutation: Mutations::CreateContact
    field :delete_contact, mutation: Mutations::DeleteContact
    field :update_contact, mutation: Mutations::UpdateContact
    field :update_last_contacted, mutation: Mutations::UpdateLastContacted
    field :create_tag, mutation: Mutations::CreateTag
  end
end
