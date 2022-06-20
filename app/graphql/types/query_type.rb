module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :posts, [PostType], null: false
    field :authors, [AuthorType], null: false

    def posts
      Post.all
    end

    def authors
      Author.all
    end 
  end
end
