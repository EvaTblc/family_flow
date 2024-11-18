class Organization < ApplicationRecord
  has_many :users
  has_many :tasks, through: :user

end
