class Week < ActiveRecord::Base
  has_many :days
  has_many :lessons, through: :days
  validates :name, :presence => true
end
