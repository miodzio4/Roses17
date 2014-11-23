class Type < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :roses
  has_many :type_searches
  has_many :searches, :through => :type_searches
end
