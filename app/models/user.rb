class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :attach_default_avatar

  has_one_attached :avatar

  has_many :messages, through: :organization
  has_many :organizations, foreign_key: :creator_id
  has_many :members

  def can_join_organization?
    organizations.count < 3
  end

  private

  def attach_default_avatar
    return if avatar.attached?

    # Récupère tous les fichiers PNG qui commencent par "default_avatar" dans le dossier
    avatar_files = Dir.glob(Rails.root.join('app', 'assets', 'images', 'default_avatar*.png'))

    # Sélectionne un fichier au hasard
    random_avatar = avatar_files.sample

    # Attache l'avatar aléatoire
    if random_avatar
      avatar.attach(
        io: File.open(random_avatar),
        filename: File.basename(random_avatar),
        content_type: 'image/png'
      )
    end
  end
end
