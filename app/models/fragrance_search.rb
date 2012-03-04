class FragranceSearch < ActiveRecord::Base
  attr_accessible :search_id, :fragrance_id
  belongs_to :search
  belongs_to :fragrance
end
