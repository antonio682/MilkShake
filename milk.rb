class MilkShake
  def initialize(flavor, price)
    @flavor = flavor
    @price = price
  end
 
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  #Let's establish what our counter should be before we start adding ingredients into the mix
  total_price_of_milkshake = @base_price
  #Add each ingredients price to our total
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
 	 end
  #return  our total price to whoever called for it
   total_price_of_milkshake
  end
end

class Ingredient	
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class ShackShop 
	def initialize
		@milk_shake_list = []
	end	

	def add_milk_shake(drink)
		@milk_shake_list.push(drink)
	end

	def checkout_milk_shake_list
        @milk_shake_list.each do |bebida|
        	puts bebida.name
        end
	end
end

nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
puts nizars_milkshake.price_of_milkshake
lista_bebidas = ShackShop.new
lista_bebidas.add_milk_shake(chocolate_chips)
lista_bebidas.add_milk_shake(banana)
lista_bebidas.checkout_milk_shake_list