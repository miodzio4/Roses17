class FreezeImmSearch < ActiveRecord::Base
  attr_accessible :search_id, :freeze_imm_id
  belongs_to :search
  belongs_to :freeze_imm
end
