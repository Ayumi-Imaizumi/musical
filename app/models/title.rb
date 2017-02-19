class Title < ActiveRecord::Base
  has_many :events
  has_many :parts

  def to_s
    self.name
  end
end
