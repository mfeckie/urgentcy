class CreateUrgencyCategories < ActiveRecord::Migration
  def change
    create_table :urgency_categories do |t|
      t.string :name
      t.integer :number
      t.integer :acceptable_wait_minutes
      t.integer :acceptable_wait_hours
    end
  end
end
