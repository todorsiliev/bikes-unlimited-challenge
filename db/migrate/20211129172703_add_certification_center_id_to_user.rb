class AddCertificationCenterIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :certification_center, foreign_key: true
  end
end
