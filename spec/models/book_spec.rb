require 'rails_helper'

describe Book, type: :model do
  describe 'validations' do
    it {should validate_presence_of :title}
  end
  
  describe 'relationships' do
    it {should have_many :ratings}
  end
end
