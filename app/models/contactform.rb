class Contactform < ApplicationRecord
  validates :name, :email, :subject, presence: true
end
