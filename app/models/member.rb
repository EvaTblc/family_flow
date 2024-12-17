class Member < ApplicationRecord
  belongs_to :user
  belongs_to :organization

  validate :organization_limit_not_exceeded, on: :create

  def organization_limit_not_exceeded
    errors.add(:base, 'Un utilisateur ne peut pas appartenir à plus de 3 organisations.') if user.members.count >= 3
  end
end
