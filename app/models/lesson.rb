class Lesson < ActiveRecord::Base
  belongs_to :day

  validates :description, :presence => true
end
