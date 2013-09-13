ActiveAdmin.register Booking do
  filter :surgeon_id, collection: proc { collect("Surgeon", :full_name) }, as: :check_boxes
  filter :urgency_category_id, collection: proc { collect "UrgencyCategory", :name }, as: :check_boxes
  filter :surgical_specialty, collection: proc { collect "SurgicalSpecialty", :name}, as: :check_boxes
  filter :surgical_procedure, collection: proc { collect "SurgicalProcedure", :name }, as: :check_boxes
  filter :patient_id, collection: proc { collect "Patient", :combined_details}, as: :select

end

def collect(model, attribute)
  eval("#{model}.all.map(&:#{attribute})")
end