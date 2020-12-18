class FeedbackSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating
end
