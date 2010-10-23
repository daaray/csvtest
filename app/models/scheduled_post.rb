class ScheduledPost < ActiveRecord::Base
  belongs_to :character
  belongs_to :reenactment
end
