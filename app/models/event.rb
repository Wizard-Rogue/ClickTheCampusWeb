class Event < ActiveRecord::Base
  attr_accessible :creator_id, :date, :description, :external_link, :name, :source, :time
  belongs_to :creator, class_name: "User"

  validates :creator, presence: true
end
