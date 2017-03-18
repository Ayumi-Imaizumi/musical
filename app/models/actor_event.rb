class ActorEvent < ActiveRecord::Base
  belongs_to :actor
  belongs_to :event
  belongs_to :part
end
