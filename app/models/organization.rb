class Organization < ApplicationRecord
  has_many :user_orgs
  has_many :users, through: :user_orgs
  belongs_to :creator, class_name: "User"
end
