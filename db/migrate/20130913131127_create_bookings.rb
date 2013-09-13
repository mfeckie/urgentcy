class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :patient
      t.references :urgency_category
      t.references :surgical_specialty
      t.references :surgical_procedure
      t.references :surgeon
      t.references :location
      t.integer :required_minutes
      t.integer :required_hours
      t.string :notice_required
      t.string :availability
      t.string :booking_status
    end
    add_index :bookings, :patient_id
    add_index :bookings, :urgency_category_id
    add_index :bookings, :surgical_specialty_id
    add_index :bookings, :surgical_procedure_id
    add_index :bookings, :surgeon_id
    add_index :bookings, :location_id
    add_index :bookings, :booking_status


  end
end
