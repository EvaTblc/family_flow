class UserOrg < ApplicationRecord
  belongs_to :user
  belongs_to :organization

  validates :user, uniqueness: { scope: :organization }
end
