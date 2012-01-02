ActiveAdmin.register Campaign do
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
