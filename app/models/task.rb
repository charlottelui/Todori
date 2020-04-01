class Task < ApplicationRecord
  belongs_to :bucket

  validates :title, presence: true
  validate :due_date_cannot_be_in_the_past

  def due_date_cannot_be_in_the_past
    if due_date < Date.today
      errors.add(:due_date, "cannot be in the past")
    end
  end
end
