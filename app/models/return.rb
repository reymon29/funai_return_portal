class Return < ApplicationRecord
  extend FriendlyId
  friendly_id :item_number, use: [:slugged, :finders]
  has_many :images
  has_many :return_logs, dependent: :destroy
  belongs_to :user
  belongs_to :product
  belongs_to :return_location
  accepts_nested_attributes_for :images, allow_destroy: :destroy
  validates :user_id, presence: true
  validates :item_number, length: { in: 10..16 }, uniqueness: { message: "has already been submitted please check your past RMAs or contact us"}, presence: true
  validates :product_id, presence: true
  validates :store_number, presence: true, format: { with: /^[C-FA-Z0-9_.-]*$/, multiline: true, message: "acceptable formats F000 or C0S00" }
  validates :serial_number, uniqueness: { scope: :item_number, message: "has already been submitted please check your past RMAs or contact us"}, presence: true, length: { is: 14 }
  validates :return_reason, presence: true
  validates :part_number, presence: true
  validates :comment, length: { in: 5..100 }, format: { with: /^(?=.*[A-Za-z0-9])[A-Za-z0-9 _ .'!""]*$/, multiline: true, message: "text only"}
  validates :special_comments, length: { in: 5..100 }, format: { with: /^(?=.*[A-Za-z0-9])[A-Za-z0-9 _ .'!""]*$/, multiline: true, message: "text only"}, allow_blank: true
  validates :attention_name, presence: true
  validates :address, presence: true, length: { in: 0..60 }
  validates :address2, length: { in: 0..60 }, allow_blank: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true, length: { in: 5..6, message: "format for US: 90501 or CA: L5H3B1" }
  validates :country, presence: true
  validates :contact_number, presence: true, format: { with: /^[0-9]{10}$/, multiline: true,
    message: "format 5555555555" }
  validates :location_type, presence: true
  validates :rma_number, uniqueness: { message: "has already been assigned please check your past RMAs"}, allow_blank: true, format: { with: /^[RMA]+[\d]*$/, multiline: true, message: "format RMA0000000"}
  before_validation :normalize_name, on: [ :create, :update ]

  def self.pending_approval
    @returns = self
    @returns.where(rma_status: "Submitted for Approval").or(Return.where("rma_status = ? and rma_number = ?", "Updated Info, awaiting review", nil)).count
  end

  def self.fedex_product
    @returns = self
    @returns.where("return_carrier = ? and rma_status = ?", "FedEx", "RMA Approved, assigning shipping").or(Return.where("return_carrier = ? and rma_status = ?", "FedEx", "Pending, waiting on info")).or(Return.where("return_carrier = ? and rma_status = ?", "FedEx", "Updated Info, awaiting review").where.not(rma_number: "")).count
  end

  def self.ltl_product
    @returns = self
    @returns.where(["return_carrier = ? and rma_status = ?", "LTL-TSG", "RMA Approved, assigning shipping"]).or(Return.where("return_carrier = ? and rma_status = ?", "LTL-TSG", "Pending, waiting on info")).or(Return.where("return_carrier = ? and rma_status = ?", "LTL-TSG", "Updated Info, awaiting review").where.not(rma_number: "")).count
  end

  def self.completed
    @returns = self
    @returns.where(["rma_status = ?", "Completed, shipping assigned"]).count
  end

  def self.denied
    @returns = self
    @returns.where(["rma_status = ?", "RMA Denied, past return period"]).or(Return.where(["rma_status = ?", "RMA Denied, not enough information"])).count
  end

  def self.thirty
   @returns = Return.where(created_at: (Date.today - 30)..Date.tomorrow)
  end

  def self.ninety
   @returns = Return.where(created_at: (Date.today - 90)..Date.tomorrow)
  end

  def self.sort_rmas
    array = []
    @returns = Return.where.not(rma_number: [nil, ""])
    @returns.each do |item|
      rma = item.rma_number.split('RMA')
      array << [rma[1], item.id, item.item_number, item.rma_number]
    end
    array.sort! {|y, z| z <=> y}

  end

  private

  def normalize_name
      self.store_number = store_number.upcase
      self.attention_name = attention_name.titleize
      self.address = address.titleize
      self.address2 = if address2.nil? then address2 else address2.titleize end
      self.city = city.titleize
      self.serial_number = serial_number.upcase
  end
end
