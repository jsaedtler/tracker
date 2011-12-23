ActiveAdmin.register Script do
  form do |f|
    f.inputs "Tracker Script" do
      f.inputs "Only for these Campaigns" do
        f.input :campaigns, :as => :check_boxes
      end
      f.inputs "Only for these Events" do
        f.input :events, :as => :check_boxes
      end
    
      f.input :content
    end
    
    f.buttons
  end
end
