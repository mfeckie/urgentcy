class CreateSurgicalSpecialties < ActiveRecord::Migration
  def change
    create_table :surgical_specialties do |t|
      t.string :name

      t.timestamps
    end
  end
end
