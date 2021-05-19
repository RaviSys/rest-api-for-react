class User < ApplicationRecord
  def account_created_at
    self.created_at.strftime("%a %d, %b %Y")
  end
end
