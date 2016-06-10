require 'pry-byebug'

# binding.pry

def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, transaction)
  return pet_shop[:admin][:total_cash] += transaction
end

def sold(pet_shop)
  return [:admin][:pets_sold]
end
