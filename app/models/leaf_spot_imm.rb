class LeafSpotImm < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :roses
  has_many :leaf_spot_imm_searches
  has_many :searches, :through => :leaf_spot_imm_searches
end
