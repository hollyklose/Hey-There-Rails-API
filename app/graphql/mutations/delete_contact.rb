module Mutations
  class DeleteContact < BaseMutation
    # arguments passed to the `resolved` method
    argument :id, Integer, required: true
    argument :user_id, Integer, required: true

    # return type from the mutation
    type Types::ContactType

    def resolve(id: nil, user_id: nil)
      contact_to_delete = Contact.find_by_id(id)
      if user_id == contact_to_delete.user_id
        contact_to_delete.destroy!
        returned_user = User.find_by_id(user_id)
        return contact_to_delete
      end
      'Contact was not deleted.'
    end
  end
end
