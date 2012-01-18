ActiveAdmin.register User do

  filter :email
  filter :first_name
  filter :last_name

  index do
    id_column
    column :email
    column :first_name
    column :last_name
    column :created_at
    default_actions
  end

  show :title => :email do
    panel 'Admin Details' do
      attributes_table_for( admin_user,
                       :email,
                       :first_name,
                       :last_name,
                       :last_sign_in_at, 
                       :last_sign_in_ip,
                       :created_at, 
                       :sign_in_count)
    end
    active_admin_comments
  end
  
  form do |f|
    f.inputs 'Details' do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end
  
end
