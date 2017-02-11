require 'rails_helper'

describe EventSearch, type: :model do
  it { should validate_presence_of(:event_type) }
  it { should validate_presence_of(:repo_name) }
  it { should validate_presence_of(:user_name) }
end
