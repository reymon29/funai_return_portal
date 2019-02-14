class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :returns
  has_many :return_logs
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :email, presence: true, uniqueness: true, format: { with: /[a-zA-Z0-9_.+-]+@(?:(?:[a-zA-Z0-9-]+\.)?[a-zA-Z]+\.)?(funaicorp|funaiservice|aarons|prodigy)\.(com|net)$/, multiline: true, message: " domain is not a valid partner at this time." }
  validates :address, presence: true, length: { in: 0..60 }
  validates :address2, length: { in: 0..60 }, allow_blank: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true, length: { in: 5..6, message: "format for US: 90501 or CA: L5H3B1" }
  validates :country, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :tos, presence: true, acceptance: { message: 'must be accepted' }
  validates :phone_number, presence: true, format: { with: /^[0-9]{10}$/, multiline: true,
    message: "format 5555555555" }
  validates :store_number, presence: true, format: { with: /^[C-FA-Z0-9_.-]*$/, multiline: true, message: "acceptable formats F000 or C0S00" }
  validates :location_type, presence: true
  before_validation :normalize_name, on: [ :create, :update ]
  after_create :send_welcome_email


  # Active admin name
  def name
    "#{store_number}-#{first_name} #{last_name}"
  end

  private

  def normalize_name
      self.store_number = store_number.nil? ? store_number : store_number.upcase
      self.first_name = first_name.nil? ? first_name : first_name.titleize
      self.last_name = last_name.nil? ? last_name : last_name.titleize
      self.address = address.nil? ? address : address.titleize
      self.address2 = address2.nil? ? address2 : address2.titleize
      self.city = city.nil? ? city : city.titleize
  end

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
