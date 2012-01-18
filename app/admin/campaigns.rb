ActiveAdmin.register Campaign do
  controller.authorize_resource
  menu :priority => 10, :if => Proc.new { can? :read, Campaign}
    
  form do |f|
    f.inputs "Campaigns" do
      f.inputs "Active Scripts" do
        f.input :scripts, :as => :check_boxes
      end
      f.input :name
      f.input :ref
    end
    f.buttons
  end
  
end
