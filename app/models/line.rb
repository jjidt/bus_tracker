class Line < ActiveRecord::Base
  has_many :stops
  has_many :stations, through: :stops
  validates_presence_of :name

end
