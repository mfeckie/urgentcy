ActiveAdmin.register Patient do

  filter :first_name
  filter :last_name
  filter :date_of_birth
  filter :mrn

  index do
    selectable_column
    #column :id
    column :last_name
    column :first_name
    column :mrn
    column :date_of_birth
    column :age
    column :ward_location
    default_actions
  end



  csv do
    %i[id last_name first_name age date_of_birth ward_location].each do |sym|
      column sym
    end
  end

  controller do
    def permitted_params
      params.permit!
    end
  end

  form do |f|
    f.inputs "Patient" do
      f.input :first_name
      f.input :last_name
      f.input :mrn
      f.input :date_of_birth, as: :date_select, start_year: Time.now.year - 120, end_year: Time.now.year
      f.input :medical_conditions, as: :check_boxes, class: 'inline'
    end
    f.buttons
  end

  show do
    attributes_table do
      row :last_name
      row :first_name
      row :mrn
      row :date_of_birth
      row 'Medical conditions' do
        formatted_medical_conditions(patient.medical_conditions)
      end
    end


  end


end

def formatted_medical_conditions(mc_array)
  conditions = mc_array.map do |mc|
    "<li>#{mc.name}</li>"
  end.join
  "<ul>#{conditions}</ul>".html_safe
end