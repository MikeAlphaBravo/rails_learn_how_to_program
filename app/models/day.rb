class Day < ActiveRecord::Base
  belongs_to :week
  has_many :lessons

  validates :name, :presence => true
end
