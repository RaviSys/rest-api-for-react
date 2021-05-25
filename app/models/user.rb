class User < ApplicationRecord
  validates :name, presence: true
  validates :email, :contact, presence: true, uniqueness: true

  before_create :set_iamge_url

  def set_iamge_url
    self.image_url = "https://statinfer.com/wp-content/uploads/dummy-user.png"
  end

  def account_created_at
    self.created_at.strftime("%a %d, %b %Y")
  end
end
