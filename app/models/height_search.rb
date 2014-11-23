class HeightSearch < ActiveRecord::Base
  attr_accessible :search_id, :height_id
  belongs_to :search
  belongs_to :height
end
