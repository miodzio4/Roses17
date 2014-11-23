class LeafSpotImmSearch < ActiveRecord::Base
  attr_accessible :search_id, :leaf_spot_imm_id
  belongs_to :search
  belongs_to :leaf_spot_imm
end
