 #require_relative '..app/models'

 Restaurant.delete_all 
 Dish.delete_all
 Tag.delete_all
 DishTag.delete_all
 
  restaurant_list = ["mcdonalds", "trattoria", "ristorante", "nightspot", "restaurante churrascaria", "scampo", "saucebox", "locanda", "luncheonette", "noshery", "bouche", "ortanique", "supper grocerant", "tableware", "souschef", "pasta yumcha", "servetrolley", "table tamale", "kyoto",  "cookline"]

 restaurant_list.each do |restaurant|
       Restaurant.create(name:restaurant)
  end

# 20.times do 
#     Restaurant.create(name: Faker::Restaurant.name)
# end

200.times do
    Dish.create(name: Faker::Food.dish, restaurant_id: Restaurant.all.sample.id)
end
 
 15.times do
    Tag.create(name: Faker::Food.spice)
end


#each restaurant has 10 unique dishes
# Restaurant.all.each do |restaurant|
#     10.times {
#       restaurant.dishes << Dish.all.sample()
#     }
# end

Dish.all.each do |dish|
    3.times do
    DishTag.find_or_create_by(dish_id: dish.id, tag_id: Tag.all.sample.id)
    end
end

#binding.pry
  


#  trattoria_dishes = ["shrimp", "lobster", "cheese burger", "burger", "enchilada", "oysters", "pasta", "sushi", "pizza", "soup"]
# trattoria_dishes.each do |dish|
#     Dish.create(name: dish, restaurant_id: 2)
# end



# Dish.new(name: dishes ,restaurant_id: restaurant.id)

# tags = ["seafood", "beef", "italian", "spicy", "vegetarian", "vegan", "savory", "sweet", "sour", "mexican", "american"]

# count = 0
# while count < 3
#   DishTag.new(dish_id: dish.id, tag_id: tags.id)   
#   count += 1
# end










