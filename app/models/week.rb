class Week < ActiveRecord::Base
  has_many :days
  validates :name, :presence => true
end
