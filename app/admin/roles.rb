ActiveAdmin.register Role do
  controller.authorize_resource
  menu :priority => 99, :if => Proc.new { can? :read, Role}
  
  form do |f|
    f.inputs 'Details' do
      f.input :name

      f.inputs "User" do
        f.input :users, :as => :check_boxes, :label_method => Proc.new {|user| "#{user.first_name} #{user.last_name}, #{user.email}"}
      end
      
    end
    
    f.buttons
  end


  show do
    panel 'Admin Details' do
      attributes_table_for( role,
                       :name,
                       :created_at, 
                       :updated_at)
    end
    panel 'Users' do
      
    end
    
    active_admin_comments
  end
end
