class Tag < ActiveRecord::Base
   
    has_many :dish_tags
    has_many :dishes, through: :dish_tag


end