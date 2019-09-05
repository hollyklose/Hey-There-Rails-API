module Mutations
  class CreateTagInstance < BaseMutation
    # arguments passed to the `resolved` method
    argument :contact_id, Integer, required: true
    argument :tag_id, Integer, required: true
    argument :user_id, Integer, required: true

    # return type from the mutation
    type Types::TagInstanceType

    def resolve(contact_id: nil, tag_id: nil, user_id: nil)
      TagInstance.create!(
        contact_id: contact_id,
        contact: Contact.find_by(id: contact_id),
        tag_id: tag_id,
        tag: Tag.find_by(id: tag_id),
        # user: User.find_by(id: user_id),
        user_id: user_id
      )
      new_tag_instance = TagInstance.find_by(contact_id: contact_id, tag_id: tag_id)
      new_tag_instance
    end
  end
end
