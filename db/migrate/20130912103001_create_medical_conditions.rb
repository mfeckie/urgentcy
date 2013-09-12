class CreateMedicalConditions< ActiveRecord::Migration
  def change
    create_table :medical_conditions do |t|
      t.string :name
    end
    add_index :medical_conditions, :name, unique: true
  end
end
