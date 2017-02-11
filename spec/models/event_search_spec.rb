require 'rails_helper'

describe EventSearch do
  describe "validations" do
    it { should validate_presence_of(:event_type) }
  end
end
