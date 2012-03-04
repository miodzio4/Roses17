class TypeSearch < ActiveRecord::Base
  attr_accessible :search_id, :type_id
  belongs_to :search
  belongs_to :type
end
