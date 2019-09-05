module Types
  class MutationType < Types::BaseObject
    field :create_contact, mutation: Mutations::CreateContact
    field :delete_contact, mutation: Mutations::DeleteContact
    field :update_contact, mutation: Mutations::UpdateContact
    field :update_last_contacted, mutation: Mutations::UpdateLastContacted
    field :create_tag, mutation: Mutations::CreateTag
    field :update_tag, mutation: Mutations::UpdateTag
    field :delete_tag, mutation: Mutations::DeleteTag
    field :create_tag_instance, mutation: Mutations::CreateTagInstance
    field :delete_tag_instance, mutation: Mutations::DeleteTagInstance
  end
end
