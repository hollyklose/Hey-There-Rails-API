module Mutations
  class UpdateTag < BaseMutation
    # arguments passed to the `resolved` method
    argument :id, Integer, required: true
    argument :user_id, Integer, required: true
    argument :name, String, required: true
    argument :custom_tag_description, String, required: false
    argument :genre, Types::TypeCategory, required: true

    # return type from the mutation
    type Types::TagType

    def resolve(id: nil, user_id: nil, name: nil, custom_tag_description: nil, genre: nil)
      tag_to_update = Tag.find_by_id(id)
      if user_id == tag_to_update.user_id
        tag_to_update.update!(
          name: name,
          custom_tag_description: custom_tag_description,
          genre: genre,
          user: User.find_by_id(user_id),
          user_id: user_id,
          id: id
        )
        tag_to_update = Tag.find_by_id(id)
        return tag_to_update
      end
        'Tag was not updated'
    end
  end
end
