class Week < ActiveRecord::Base
  validates :name, :presence => true
end
