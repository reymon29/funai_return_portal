class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :returns
  has_many :return_logs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true, uniqueness: true, format: { with: /[a-zA-Z0-9_.+-]+@(?:(?:[a-zA-Z0-9-]+\.)?[a-zA-Z]+\.)?(funaicorp|funaiservice|aarons)\.com$/, multiline: true, message: " domain is not a valid partner at this time." }
  validates :address, presence: true, length: { in: 0..60 }
  validates :address2, length: { in: 0..60 }, allow_blank: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :country, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :tos, presence: true
  validates :phone_number, presence: true, format: { with: /^[0-9]{10}$/, multiline: true,
    message: "format 5555555555" }
  validates :location_type, presence: true
  after_create :send_welcome_email

  # Active admin name
  def name
    "#{store_number}-#{first_name} #{last_name}"
  end
  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
