module Mutations
  class UpdateLastContacted < BaseMutation
    # arguments passed to the `resolved` method
    argument :id, Integer, required: true
    argument :user_id, Integer, required: true
    argument :last_contacted_today, Types::DateTimeType, required: true

    # return type from the mutation
    type Types::ContactType

    def resolve(id: nil, user_id: nil, last_contacted_today: nil)
      contact_to_update = Contact.find_by_id(id)
      if user_id == contact_to_update.user_id
        contact_to_update.update!(
          last_contacted: last_contacted_today
        )
        contact_to_update = Contact.find_by_id(id)
        return contact_to_update
      end
        'Contact was not updated'
    end
  end
end
