class Event < ActiveRecord::Base
  attr_accessible :creator_id, :date, :description, :external_link, :name, :source, :time, :creator
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"

  validates :creator_id, presence: true

end
