class Note < ActiveRecord::Base
  has_many :tasks
end
