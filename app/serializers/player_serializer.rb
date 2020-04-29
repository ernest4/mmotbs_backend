# frozen_string_literal: true

# EXAMPLES
# class PostSerializer
#   include FastJsonapi::ObjectSerializer
#   attributes :title, :content
#   has_many :comments
# end

# # app/serializers/comment_serializer.rb

# class CommentSerializer
#   include JSONAPI::Serializer

#   attribute :id
#   attribute :author
#   attribute :body
# end

class PlayerSerializer < BaseSerializer
  attributes :name

  attribute :custom_attribute_example do |player|
    "#{player.name} (#{player.id})"
  end

  attribute :externally_controlled_field do |player, params|
    params[:testy]
  end
end
