class License < ApplicationRecord
  belongs_to :certification_center

  scope :unprocessed, -> { where(processed_at: nil) }

  validates :holder_name, presence: true
  validates :holder_email, presence: true
  validates :licensed_at, presence: true
end
