ActiveAdmin.register UrgencyCategory do
  filter :name

  controller do
    def permitted_params
      params.permit!
    end
  end

end
