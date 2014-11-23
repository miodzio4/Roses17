class MilddewImmSearch < ActiveRecord::Base
  attr_accessible :search_id, :milddew_imm_id
  belongs_to :search
  belongs_to :milddew_imm
end
