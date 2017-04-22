class Event < ActiveRecord::Base
  belongs_to :title
  has_many :viewing_logs
  has_many :users, through: :viewing_logs
  belongs_to :theater
  has_many :actors, through: :actor_events
  has_many :actor_events

  def to_s
    "#{title.name}(#{play_at.strftime("%Y年#{play_at.month}月%d日（#{%w(日 月 火 水 木 金 土)[play_at.wday]}）")}@#{theater.name})"
  end

  def schedule_name
    "#{title.name}(#{play_at.strftime("%Y年#{play_at.month}月%d日（#{%w(日 月 火 水 木 金 土)[play_at.wday]}）")}@#{theater.name})"
  end
end
