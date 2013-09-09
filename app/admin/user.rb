ActiveAdmin.register User do

  filter :first_name
  filter :last_name
  filter :email
  filter :admin

  index do
    column :last_name
    column :first_name
    column :email
    column :admin
    column :sign_in_count
    default_actions
  end

  show do
    attributes_table do
      row :last_name
      row :first_name
      row :email
      row :admin
      row :sign_in_count
      row :last_sign_in_at
      row :last_sign_in_ip
      row :current_sign_in_at
      row :current_sign_in_ip
      row :created_at
      row :updated_at
    end
  end

  form do |f|
    f.inputs "User" do
      f.input :last_name
      f.input :first_name
      f.input :email
      f.input :admin
    end
    f.actions
  end

end
