module Mutations
  class CreateAuthorMutation < BaseMutation
    field :author, Types::AuthorType, null: false

    argument :name, String, required: true

    def resolve(name:)
      @author = Author.new(name: name)
      if @author.save
        { author: @author }
      else
        { errors: @author.errors.full_messages }
      end
    end
  end
end
