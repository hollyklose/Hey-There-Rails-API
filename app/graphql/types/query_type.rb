module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :contacts, [Types::ContactType], null: false do
      description 'An array of the User contacts'
      argument :user_id, Integer, required: true
    end

    def contacts(user_id:)
      if user_id
      return Contact.where(user_id: user_id)
      end
      []
    end

    field :contact, Types::ContactType, null: false do
      description 'One single contact'
      argument :user_id, Integer, required: true
      argument :id, Integer, required: true
    end

    def contact(user_id:, id:)
      contact_to_display = Contact.find_by_id(id)
      if user_id == contact_to_display.user_id
        return contact_to_display
      end
    end

    field :tags, [Types::TagType], null: true do
      description 'An array of the User created tags'
      argument :user_id, Integer, required: true
    end

    def tags(user_id:)
      if user_id
        return Tag.where(user_id: user_id)
      end
      []
    end

    field :tag_instances, [Types::TagInstanceType], null: true do
      description 'An array of tags as they are applied to specific User contacts'
      argument :contact_id, Integer, required: false
      argument :tag_id, Integer, required: false
    end

    def tag_instances(contact_id:, tag_id:)
      if contact_id
        return Tag_Instance.where(contact_id: contact_id)
      end
      if tag_id
        return Tag_Instance.where(tag_id: tag_id)
      end
    end

  end
end
