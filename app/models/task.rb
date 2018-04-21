class Task < ApplicationRecord
  belongs_to :project

  def self.complete
    where(completed: true)
  end
  def self.incomplete
    where(completed: false)
  end
end
