class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :authentication_keys => [:username]

  attr_accessible :username, :password, :password_confirmation, :remember_me, :admin
  validates_presence_of   :username
  validates_uniqueness_of :username, :allow_blank => true

  validates_presence_of     :password
  validates_confirmation_of :password
  has_many :events, dependent: :destroy, foreign_key: "creator_id"
end
