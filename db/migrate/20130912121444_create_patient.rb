class CreatePatient < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.string :mrn
      t.date :date_of_birth
      t.string :ward_location
    end
    add_index :patients, :mrn
  end
end
