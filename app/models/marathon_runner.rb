class MarathonRunner < ActiveRecord::Base
  attr_accessible :marathon_id, :runners_id
  belongs_to :marathon
  belongs_to :runner
end
