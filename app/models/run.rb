class Run < ApplicationRecord
  validates_inclusion_of :hour, {:in => 0..23, message: "Hour must be between 0 and 23!"}
  validates_inclusion_of :minute, {:in => 0..59, message: "Minute must be between 0 and 59!"}
  validates_inclusion_of :second, {:in => 0..59, message: "Minute must be between 0 and 59!"}
  belongs_to :user
  belongs_to :game

  def time_formatting
    if self.hour == 0
      return self.minute.to_s + ":" + self.second.to_s
    else
      return self.hour.to_s + ":" + self.minute.to_s + ":" + self.second.to_s
    end
  end

end
