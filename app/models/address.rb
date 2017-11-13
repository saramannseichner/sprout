class Address < ApplicationRecord
  validates :street_address, presence: true
  validates :city, presence: true
  validates :country, presence: true
  validates :postal_code, presence: true
  validates :phone_number, format: { with: /^\(?([0-9]{3})\)?[-.●]?([0-9]{3})[-.●]?([0-9]{4})$/,
                          message: "only numbers will be accepted" }
  validates :street_address, presence: true
end
