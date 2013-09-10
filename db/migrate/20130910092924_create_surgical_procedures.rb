class CreateSurgicalProcedures < ActiveRecord::Migration
  def change
    create_table :surgical_procedures do |t|
      t.string :name

      t.timestamps
    end
    add_index :surgical_procedures, :name, unique: true
  end
end
