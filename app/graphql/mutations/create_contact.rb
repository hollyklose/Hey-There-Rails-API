module Mutations
  class CreateContact < BaseMutation
    # arguments passed to the `resolved` method
    argument :user_id, Integer, required: true
    argument :name, String, required: true
    argument :how_met, String, required: true
    argument :frequency, Integer, required: true
    argument :priority, Integer, required: true
    argument :last_contacted, Types::DateTimeType, required: true

    # return type from the mutation
    type Types::ContactType

    def resolve(name: nil, how_met: nil, frequency: nil, priority: nil, last_contacted: nil, user_id: user_id)
      Contact.create!(
        name: name,
        how_met: how_met,
        frequency: frequency,
        priority: priority,
        last_contacted: last_contacted,
        user: User.find_by(id: user_id)
      )
    end
  end
end
