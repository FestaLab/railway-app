class UserJob < ApplicationJob
  def perform(user)
    user.update! token: SecureRandom.urlsafe_base64
  end
end
