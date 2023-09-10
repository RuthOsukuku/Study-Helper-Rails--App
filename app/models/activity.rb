class Activity < ApplicationRecord
  belongs_to :user

  validates :date, presence: true
  validate :unique_activity_per_date

  private

  def unique_activity_per_date
    if user.activities.where(date: date).where.not(id: id).exists?
      errors.add(:date, 'You can create only one activity per date')
    end
  end

end
