class OneOnOne < ActiveRecord::Base
  validates_presence_of :student, :date
end
