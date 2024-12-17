class Task < ApplicationRecord
  before_save :format_date
  belongs_to :organization

  CATEGORIES = ['Maison', 'Administratif', 'Santé', 'Famille', 'Loisirs', 'Quotidien', 'Autres']
  validates :category, inclusion: { in: CATEGORIES }
  validates :start, timeliness: { on_or_before: lambda { Date.current }, type: :date }
  validates :end, presence: true, comparison: { greater_than_or_equal_to: :start }


  def format_date
    self.start = start.strftime("%d/%m/%Y") if start.present?
    self.end = self.end.strftime("%d/%m/%Y") if self.end.present?
  end
end
