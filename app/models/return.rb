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
  validates :serial_number, uniqueness: { scope: :item_number, message: "has already been submitted please check your past RMAs or contact us"}, presence: true, length: { is: 14 }
  validates :invoice_date, presence: true
  validates :return_reason, presence: true
  validates :part_number, presence: true
  validates :comment, presence: true
  validates :attention_name, presence: true
  validates :address, presence: true, length: { in: 0..60 }
  validates :address2, length: { in: 0..60 }, allow_blank: true
  validates :city, presence: true
  validates :state, presence: true
  validates :zip, presence: true
  validates :country, presence: true
  validates :contact_number, presence: true, format: { with: /^[0-9]{10}$/, multiline: true,
    message: "format 5555555555" }
  validates :rma_number, uniqueness: { message: "has already been assigned please check your past RMAs"}, allow_blank: true


  def self.pending_approval
    @returns = self
    @returns.where(rma_status: "Submitted for Approval").or(Return.where(rma_status: "Updated Info, awaiting review")).count
  end

  def self.fedex_product
    @returns = self
    @returns.where("return_carrier = ? and rma_status = ?", "FedEx", "RMA Approved, assigning shipping").or(Return.where("return_carrier = ? and rma_status = ?", "FedEx", "Pending, waiting on info")).or(Return.where("return_carrier = ? and rma_status = ?", "FedEx", "Updated Info, awaiting review").where.not(rma_number: nil)).count
  end

  def self.ltl_product
    @returns = self
    @returns.where(["return_carrier = ? and rma_status = ?", "LTL-TSG", "RMA Approved, assigning shipping"]).or(Return.where("return_carrier = ? and rma_status = ?", "LTL-TSG", "Pending, waiting on info")).or(Return.where("return_carrier = ? and rma_status = ?", "LTL-TSG", "Updated Info, awaiting review").where.not(rma_number: nil)).count
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
end
