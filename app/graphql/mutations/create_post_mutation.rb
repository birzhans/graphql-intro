module Mutations
  class CreatePostMutation < BaseMutation
    field :post, Types::PostType, null: false

    argument :title, String, required: true
    argument :body, String, required: true
    argument :author, Integer, required: true

    def resolve(title:, body:, author:)
      @post = Post.new(title: title, body: body, author_id: author)
      if @post.save
        { post: @post }
      else
        { errors: @post.errors.full_messages }
      end
    end
  end
end
