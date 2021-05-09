class User < ApplicationRecord
  after_commit -> { UserJob.perform_later(self) }
end
