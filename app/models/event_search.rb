class EventSearch < ApplicationRecord
  validates :repo_name, :user_name, :event_type, presence: true
end
