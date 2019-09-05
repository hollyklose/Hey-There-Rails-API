module Mutations
  class DeleteTag < BaseMutation
    # arguments passed to the `resolved` method
    argument :id, Integer, required: true
    argument :user_id, Integer, required: true

    # return type from the mutation
    type Types::TagType

    def resolve(id: nil, user_id: nil)
      tag_to_delete = Tag.find_by_id(id)
      if user_id == tag_to_delete.user_id
        tag_to_delete.destroy!
        return tag_to_delete
      end
      'Tag was not deleted.'
    end
  end
end
