class ViewingLogsController < ApplicationController

  def index
    @viewing_logs = ViewingLog.includes(:event).where(user:current_user).order("events.play_at DESC")
  end

  def show
    @viewing_log = ViewingLog.find(params[:id])
  end

  def new
    viewing_log = ViewingLog.new(user:current_user, event_id:params[:event_id].to_i)
    if viewing_log.save
      redirect_to viewing_logs_path
    else
      @errors = {viewing_log.event_id=>viewing_log.errors}
      @title = viewing_log.event.title
      render "titles/show"
    end
  end
  def destroy
    @viewing_log = ViewingLog.find(params[:id])
    @viewing_log.destroy
    redirect_to viewing_logs_path
  end

end
