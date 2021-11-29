class CreateCertificationCenters < ActiveRecord::Migration[6.1]
  def change
    create_table :certification_centers do |t|
      t.string :name, null: false
      t.string :email

      t.timestamps
    end
  end
end
