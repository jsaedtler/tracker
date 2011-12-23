class Script < ActiveRecord::Base
  has_and_belongs_to_many :campaigns
  has_and_belongs_to_many :events

  def self.find_by_ref_and_event_id ref, event_id
    joins("
      left outer join campaigns_scripts on campaigns_scripts.script_id = scripts.id
      left outer join campaigns on campaigns_scripts.campaign_id = campaigns.id
      left outer join events_scripts on events_scripts.script_id = scripts.id
      left outer join events on events_scripts.event_id = events.id
      ").where("(campaigns.ref = :ref or campaigns.ref is null) and (events.id = :event_id or events.id is null)",
         :ref => ref, :event_id => event_id).all
  end
end
