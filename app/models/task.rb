class Task < ActiveRecord::Base
  belongs_to :note

  def done?
    indicator
  end
end
