module Mutations
  class DeleteContact < BaseMutation
    # arguments passed to the `resolved` method
    argument :id, Integer, required: true
    argument :user_id, Integer, required: true

    # return type from the mutation
    # return_field :deletedName, types.String
    type Types::ContactType

    def resolve(id: nil, user_id: nil)
      contact_to_delete = Contact.find_by_id(id)
      puts 'before'
      if user_id == contact_to_delete.user_id
        contact_to_delete.destroy!()
      end
    end
  end
end
