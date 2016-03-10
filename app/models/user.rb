class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  validates :email, presence: true, uniqueness: true

  has_secure_password
  validates_confirmation_of :password
  validates_presence_of :password, on: :create

  before_save :format_email


  scope :vip, -> {where("id < 5")}

  scope :check_name, -> {where("(fname != '') and (fname IS NOT null)")}



  def format_email
    self.email = self.email.downcase
  end

end
