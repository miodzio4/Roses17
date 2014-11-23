class Height < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :roses
  has_many :height_searches
  has_many :shearches, :through => :height_searches
end
