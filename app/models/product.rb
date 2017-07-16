class Product < ActiveRecord::Base
  has_many :reviews
  accepts_nested_attributes_for :reviews
  
  validates :name, :presence => true
  validates :description, :presence => true
  validates :cost, :presence => true
  validates :country, :presence => true
end
