class Marathon < ActiveRecord::Base
  attr_accessible :city, :date, :event_name
  has_many :marthon_runners
  has_many :runners, :through => :marathon_runners
end
