class FlowerColor < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :roses
  has_many :flower_color_searches
  has_many :searches, :through => :flower_color_searches
end
