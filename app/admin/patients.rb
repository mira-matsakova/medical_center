ActiveAdmin.register Patient do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :full_name, :phone_number, :type, :category_id
  #
  permit_params :email, :password, :full_name, :phone_number, :password_confirmation
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :full_name, :phone_number, :type, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    id_column
    column :full_name
    column :email
    column :phone_number
    actions
  end

  form do |f|
    f.inputs "Create patient" do
      f.input :full_name
      f.input :email
      f.input :phone_number
      f.input :password
      f.input :password_confirmation
      f.submit
    end
  end
end
