class EventSearch < ApplicationRecord
  validates :repo_name, :user_name, :event_type, presence: true
  class_attribute :backend
  self.backend = Github

  def events
    backend.activity.events.repository(user_name, repo_name)
  end

  def events_by_type
    events.select{|e| e.type == event_type}
  end
end
