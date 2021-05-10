class User < ApplicationRecord
  after_create -> { UserJob.perform_later(self) }
end
