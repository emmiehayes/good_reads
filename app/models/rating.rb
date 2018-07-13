class Rating < ApplicationRecord
  validates_presence_of :body, :value
  belongs_to :book 
  belongs_to :user
end
