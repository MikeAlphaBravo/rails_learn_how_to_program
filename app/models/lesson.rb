class Lesson < ActiveRecord::Base
  belongs_to :day

  validates :description, :order, :presence => true
end
