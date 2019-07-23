module Mutations
  class UpdateContact < BaseMutation
    # arguments passed to the `resolved` method
    argument :id, Integer, required: true
    argument :user_id, Integer, required: true
    argument :name, String, required: true
    argument :how_met, String, required: true
    argument :frequency, Integer, required: true
    argument :priority, Integer, required: true
    argument :last_contacted, Types::DateTimeType, required: true

    # return type from the mutation
    type Types::ContactType

    def resolve(id: nil, user_id: nil, name: nil, how_met: nil, frequency: nil, priority: nil, last_contacted: nil)
      contact_to_update = Contact.find_by_id(id)
      if user_id == contact_to_update.user_id
        contact_to_update.update!(
          name: name,
          how_met: how_met,
          frequency: frequency,
          priority: priority,
          last_contacted: last_contacted,
          user: User.find_by_id(user_id),
          user_id: user_id,
          id: id
        )
        contact_to_update = Contact.find_by_id(id)
        return contact_to_update
      end
        'Contact was not updated'
    end
  end
end
