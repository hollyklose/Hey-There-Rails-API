module Mutations
  class CreateTag < BaseMutation
    # arguments passed to the `resolved` method
    argument :name, String, required: true
    argument :custom_tag_description, String, required: false
    argument :genre, Types::TypeCategory, required: true
    argument :user_id, Integer, required: true

    # return type from the mutation
    type Types::TagType

    def resolve(name: nil, custom_tag_description: nil, genre: nil, user_id: nil)
      Tag.create!(
        name: name,
        custom_tag_description: custom_tag_description,
        genre: genre,
        user: User.find_by(id: user_id),
        user_id: user_id
      )
      new_tag = Tag.find_by(name: name)
      new_tag
    end
  end
end
