module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :posts, [Types::PostType], null: false
    field :authors, [Types::AuthorType], null: false

    def posts
      Post.all
    end

    def authors
      Author.all
    end 
  end
end
