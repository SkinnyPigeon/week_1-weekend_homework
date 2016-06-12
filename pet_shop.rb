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

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  return pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].length
end



def pets_by_breed(pet_shop, breed_name)
  pet_search = []
  for pet in pet_shop[:pets]
  pet_search << pet if pet[:breed] == breed_name 
  end
  return pet_search
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == pet_name
  end 
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    pet.delete(:name) if pet[:name] == pet_name
  end
  return nil
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end

def customer_pet_count(customers)
  customers[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customers, new_pet)
    return customers[:cash] > new_pet[:price]
end

def sell_pet_to_customer(pet_shop, pet, customer)

  if pet != nil && customer_can_afford_pet(customer, pet)

    add_pet_to_customer(customer, pet)
    add_or_remove_cash(pet_shop, pet[:price])
    increase_pets_sold(pet_shop, 1)
    else 
      return false
      puts "Get out of my shop you cheap bastard."
  end
end





