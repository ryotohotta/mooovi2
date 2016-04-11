class User < ActiveRecord::Base
  validates :nickname, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews
  has_attached_file :avator,
                      styles: { medium: "300x300#", thumb: "100x100#"}
  validates_attachment_content_type :avator,
                      content_type: ["image/jpeg", "image/jpg", "image/png"]
end