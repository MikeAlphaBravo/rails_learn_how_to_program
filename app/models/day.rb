class Day < ActiveRecord::Base
  belongs_to :week

  validates :name, :presence => true
end
