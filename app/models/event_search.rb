class EventSearch
  include ActiveModel::Model
  attr_accessor :repo_name, :user_name, :event_type
  validates :repo_name, :user_name, :event_type, presence: true

  def persisted?
    false
  end
end
