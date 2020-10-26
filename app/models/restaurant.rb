class Restaurant < ActiveRecord::Base

    has_many :dishes

    
    def self.mcdonalds
        self.find_by(name: "mcdonalds")
    end

    def self.tenth
        self.find(10)
    end

    def self.with_long_names
        self.where("LENGTH(name) > 12")
    end
    
    def self.max_dishes
        self.where("Dish.all.count > 15")
    binding.pry
    end

   def self.focused
    #find restaurants with fewer than 5 meals

    self.where("Dish.all.count < 5")
   end

   def self.large_menu
    self.where("Dish.all.count > 20")
   end

   def vegetarian
    Dish.where(dish_tags: "Vegetarian", restaurant_id: )
   end

end

Restaurant.max_dishes