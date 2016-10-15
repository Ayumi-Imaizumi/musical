class Event < ActiveRecord::Base
  belongs_to :title
  has_many :viewing_logs
  has_many :users, through: :viewing_logs
  belongs_to :theater
  has_many :actors

  def to_s
    "#{self.title.name}(#{self.play_at})"
  end
end
