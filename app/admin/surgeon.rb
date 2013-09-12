ActiveAdmin.register Surgeon do
  menu parent: 'Reference Tables'

  filter :first_name
  filter :last_name

  controller do
    def permitted_params
      params.permit!
    end
  end
end