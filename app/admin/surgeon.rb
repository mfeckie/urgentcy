ActiveAdmin.register Surgeon do
  filter :first_name
  filter :last_name

  controller do
    def permitted_params
      params.permit!
    end
  end
end