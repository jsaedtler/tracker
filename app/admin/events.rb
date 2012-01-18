ActiveAdmin.register Event do
  controller.authorize_resource
  menu :priority => 40, :if => Proc.new { can? :read, Event}
  
end
