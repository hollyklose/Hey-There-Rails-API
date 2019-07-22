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
  end
end
