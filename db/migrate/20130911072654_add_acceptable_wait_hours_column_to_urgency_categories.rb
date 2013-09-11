class AddAcceptableWaitHoursColumnToUrgencyCategories < ActiveRecord::Migration
  def change
    add_column :urgency_categories, :acceptable_wait_hours, :integer
  end
end
