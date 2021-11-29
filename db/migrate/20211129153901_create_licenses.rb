class CreateLicenses < ActiveRecord::Migration[6.1]
  def change
    create_table :licenses do |t|
      t.string :holder_name, null: false
      t.string :holder_email, null: false
      t.datetime :licensed_at, null: false
      t.datetime :processed_at

      t.timestamps
    end

    add_index :licenses, :processed_at 
  end
end
