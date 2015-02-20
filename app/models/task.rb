class Task < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  # validates :time, presence: true

  belongs_to :user
  belongs_to :pet
end
