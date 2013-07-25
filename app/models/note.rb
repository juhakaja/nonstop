class Note < ActiveRecord::Base
  has_many :tasks

  accepts_nested_attributes_for :tasks, allow_destroy: true

  def weekday
    date.strftime("%a")
  end
end
