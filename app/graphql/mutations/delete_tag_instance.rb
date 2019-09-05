module Mutations
  class DeleteTagInstance < BaseMutation
    # arguments passed to the `resolved` method
    argument :id, Integer, required: true
    argument :user_id, Integer, required: true

    # return type from the mutation
    type Types::TagInstanceType

    def resolve(id: nil, user_id: nil)
      tag_instance_to_delete = TagInstance.find_by_id(id)
      if user_id == tag_instance_to_delete.user_id
        tag_instance_to_delete.destroy!
        return tag_instance_to_delete
      end
      'Tag was not deleted.'
    end
  end
end
