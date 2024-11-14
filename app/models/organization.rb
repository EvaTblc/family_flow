class Organization < ApplicationRecord
  has_many :user_orgs
  has_many :users, through: :user_orgs
  has_many :tasks, through: :users


end
