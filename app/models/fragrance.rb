class Fragrance < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :roses
  has_many :fragrance_searches
  has_many :searches, :through => :fragrance_searches
end
