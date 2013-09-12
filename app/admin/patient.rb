ActiveAdmin.register Patient do
  fields = %i[id last_name first_name age date_of_birth ward_location]
  index do
    selectable_column
    column :id
    column :last_name
    column :first_name
    column :age
    column :date_of_birth
    column :ward_location
    default_actions
  end

  csv do
    fields.each do |sym|
      column sym
    end
  end

end