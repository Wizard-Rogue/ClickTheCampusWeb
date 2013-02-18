class Event < ActiveRecord::Base
  attr_accessible :creator_id, :date, :description, :external_link, :name, :source, :time, :creator, :picture
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_size :picture, :less_than => 2.megabytes
  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png']

  validates :creator_id, presence: true

  def picture_url
    picture.url
  end

end
