ActiveAdmin.register UrgencyCategory do
  menu parent: 'Reference Tables'
  filter :name

  controller do
    def permitted_params
      params.permit!
    end
  end

end
