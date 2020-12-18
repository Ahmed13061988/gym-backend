class UsersController < ApplicationController
    has_secure_password
  has_many :reviews
  has_many :restaurants, through: :reviews
end
