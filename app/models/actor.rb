class Actor < ActiveRecord::Base
  has_many :events, through: :actor_events
  has_many :actor_events
end
