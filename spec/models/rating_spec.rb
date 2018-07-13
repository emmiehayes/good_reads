require 'rails_helper'

describe Rating, type: :model do
  describe 'validations' do
    it {should validate_presence_of :value}
  end

  describe 'relationships' do
    it {should belong_to :book}
    it {should belong_to :user}
  end
end
