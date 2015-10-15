class ShiftDetail < ActiveRecord::Base
  belongs_to :user, inverse_of: :shift_details
  delegate :name, to: :user, allow_nil: true
  scope :morning_shifts, -> { where("start_time < '2015-10-13 12:00' and start_time > 
                            '2015-10-13 00:00'")}
 # do
 #   def test_value
 #     "actual value"
 #   end
 # end
end
