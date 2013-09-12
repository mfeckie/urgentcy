class AddUrgencyCategory < ActiveRecord::Migration
  def change
    create_table :urgency_categories do |t|
      t.string :name
      t.integer :number
      t.integer :acceptable_wait_minutes
    end
  end
end
