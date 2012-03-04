class FlowerColorSearch < ActiveRecord::Base
  attr_accessible :search_id, :flower_color_id
  belongs_to :search
  belongs_to :flower_color
end
