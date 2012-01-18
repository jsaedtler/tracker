ActiveAdmin.register Script do
  controller.authorize_resource
  menu :priority => 30, :if => Proc.new { can? :manage, Script}

  scope :all, :default => true
  
  filter :campaigns_id, :as => :check_boxes, :collection => proc { Campaign.all }
  filter :events_id, :as => :check_boxes, :collection => proc { Event.all }

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
