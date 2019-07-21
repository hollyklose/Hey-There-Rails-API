module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :contacts,
          [Types::ContactType],
          null: false,
          description: 'An array of the User contacts'

    def contacts
      Contact.all
    end
  end
end
