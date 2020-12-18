class User < ApplicationRecord
  has_secure_password
  has_many :feedbacks
  has_many :gyms, through: :feedbacks
end
