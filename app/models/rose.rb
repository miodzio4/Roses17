class Rose < ActiveRecord::Base
  attr_accessible :name,:description, :flower_shape,:flower_color_desc, :flower_color_id, :synonims, :milddew_imm_id, :leaves_color, :leaf_spot_imm_id, :fragrance_id, :height_id, :height_text, :width, :freeze_imm_id, :type_id, :year, :origin, :shape_id, :ADR, :flower_shape_id, :cultivation, :remarks
belongs_to :flower_color  
belongs_to :milddew_imm
#belongs_to :flower_shape
#belongs_to :leaves_color
belongs_to :leaf_spot_imm
belongs_to :fragrance
belongs_to :height
#belongs_to :width
belongs_to :freeze_imm
belongs_to :type
#belongs_to :shape
#belongs_to :flower_shape

end
