class CreateLocation < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :ordering_number
    end
    add_index :locations, :name, unique: true
  end
end
