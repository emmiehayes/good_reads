require 'rails_helper'

describe Rating, type: :model do
  describe 'validations' do
    it {should validate_presence_of :value}
  end
end
