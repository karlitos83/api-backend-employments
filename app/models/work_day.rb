class WorkDay < ApplicationRecord
  belongs_to :user

  validates :entry_at, :departure_at, presence: true

    validate :departure_time_after_entry_time

    private

    def departure_time_after_entry_time
      return if departure_at.blank? || entry_at.blank?

      if departure_at < entry_at
        errors.add(:departure, "Departure time must be after entry time")
      end
    end
end
