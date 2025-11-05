class Product < ApplicationRecord
    def name_list
     return name&.split(" ")
   end

    def friendly_created_at
     created_at.strftime("%b %e, %l:%M %p")
    end

    def is_discounted
     price.to_f >= 10
    end

    def tax
     price.to_f * 0.09
    end

    def total
     price.to_f + tax
    end 

 end
 