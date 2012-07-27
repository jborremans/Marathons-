class Runner < ActiveRecord::Base
  attr_accessible :dob, :name
  has_many :marathon_runners
  has_many :marathons, :through => :marathon_runners
end
