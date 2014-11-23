
class Search < ActiveRecord::Base
 
def roses
	@roses = Rose.all    
	#@roses = Rose.find(:all, :conditions => ["roses.name LIKE ?", "%#{name}%"]) 
end
 attr_accessible :name, :flower_color_id, :milddew_imm_id, :leaf_spot_imm_id, :fragrance_id, :height_id, :freeze_imm_id, :type_id, :ADR,
  :flower_color_ids, :milddew_imm_ids,:leaf_spot_imm_ids, :fragrance_ids, :height_ids, :freeze_imm_ids,:type_ids
  has_many :flower_color_searches
  has_many :flower_colors, :through => :flower_color_searches

  has_many :freeze_imm_searches
  has_many :freeze_imms, :through => :freeze_imm_searches

  has_many :type_searches
  has_many :types, :through => :type_searches

  has_many :milddew_imm_searches
  has_many :milddew_imms, :through => :milddew_imm_searches

  has_many :fragrance_searches
  has_many :fragrances, :through => :fragrance_searches

  has_many :leaf_spot_imm_searches
  has_many :leaf_spot_imms, :through => :leaf_spot_imm_searches

  has_many :height_searches
  has_many :heights, :through => :height_searches
  



#  has_many :fragrance_searches
#  has_many :fragrances, :through => :fragrance_searches

#  has_many :height_searches
#  has_many :heights, :through => :height_searches

#  has_many :width_searches
#  has_many :widths, :through => :width_searches

end

#public


