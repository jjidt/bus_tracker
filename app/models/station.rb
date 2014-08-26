class Station < ActiveRecord::Base
  has_many :stops
  has_many :lines, through: :stops
  validates_presence_of :name


end
