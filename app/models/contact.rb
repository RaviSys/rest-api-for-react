class Contact < ApplicationRecord
  validates :name, :message, presence: true
  validates :phone, :email, presence: true, uniqueness: true
end
