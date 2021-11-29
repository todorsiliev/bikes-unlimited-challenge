class AddCertificationCenterIdToLicense < ActiveRecord::Migration[6.1]
  def change
    add_reference :licenses, :certification_center, foreign_key: true
  end
end
