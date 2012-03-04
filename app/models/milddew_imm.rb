class MilddewImm < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :roses
  has_many :milddew_imm_searches
  has_many :searches, :through => :milddew_imm_searches
end
