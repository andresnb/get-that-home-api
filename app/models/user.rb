class User < ApplicationRecord
  has_secure_token
  has_secure_password

  def invalidate_token
    update(token: nil)
    # update(token: nil, token_created_at: nil)
  end

  def update_token
    regenerate_token
    # update(token_created_at: Time.current)
  end

  def self.valid_login?(email, password)
    user = find_by(email:)
    user if user&.authenticate(password)
  end
end
