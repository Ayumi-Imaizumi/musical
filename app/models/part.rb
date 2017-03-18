class Part < ActiveRecord::Base
  belongs_to :title
  has_many :actor_events
end
