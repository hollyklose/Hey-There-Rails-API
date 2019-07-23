module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :contacts, [Types::ContactType], null: false do
      description 'An array of the User contacts'
      argument :user_id, Integer, required: true
    end

    def contacts(user_id:)
      Contact.where(user_id: user_id)
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
  end
end
