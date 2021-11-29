class License < ApplicationRecord
  belongs_to :certification_center

  scope :unprocessed, -> { where(processed_at: nil) }
end
