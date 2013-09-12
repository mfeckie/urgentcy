class CreateSurgeons < ActiveRecord::Migration
  def change
    create_table :surgeons do |t|
      t.string :first_name
      t.string :last_name
      t.string :telephone_number
      t.string :mobile_number
      t.string :pager

      t.timestamps
    end
  end
end
