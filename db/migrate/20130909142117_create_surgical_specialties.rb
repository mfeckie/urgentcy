class CreateSurgicalSpecialties < ActiveRecord::Migration
  def change
    create_table :surgical_specialties do |t|
      t.string :name

      t.timestamps
    end
    add_index :surgical_specialties, :name, unique: true
  end
end
