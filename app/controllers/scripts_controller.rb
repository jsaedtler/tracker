class ScriptsController < ApplicationController

  def index
    @trackers = Script.find_by_ref_and_event_id(params[:ref],params[:event_id])
    render :layout => false
  end
  
end
