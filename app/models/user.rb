class User < ApplicationRecord
  has_many :favorites
  has_many :bumblefooks, through: :favorites
end
