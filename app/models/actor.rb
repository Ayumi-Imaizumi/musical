class Actor < ActiveRecord::Base
  has_many :events, through: :actor_events
  has_many :actor_events

  def my_part(event_id)
    ActorEvent.where(actor_id: id)
    .where(event_id: event_id)
    .includes(:part).first
  end
end
