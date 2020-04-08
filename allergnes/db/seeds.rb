# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all
Amount.destroy_all
Allergy.destroy_all


johnathan = User.create({name: "Johnathan"})
shrek = User.create({name: "Shrek"})

cake = Recipe.create({name: "Cake", user_id: johnathan.id})
swamp_stew = Recipe.create({name: "Swamp Stew", user_id: shrek.id})

egg = Ingredient.create({name: "egg"})
milk = Ingredient.create({name: "milk"})
flour = Ingredient.create({name: "flour"})

fudge = Ingredient.create({name: "fudge"})
mud = Ingredient.create({name: "mud"})
love = Ingredient.create({name: "love"})

Allergy.create({user_id: johnathan.id, ingredient_id: mud.id})
Allergy.create({user_id: shrek.id, ingredient_id: egg.id})

Amount.create({recipe_id: cake.id, ingredient_id: egg.id})
Amount.create({recipe_id: cake.id, ingredient_id: milk.id})
Amount.create({recipe_id: cake.id, ingredient_id: flour.id})
Amount.create({recipe_id: cake.id, ingredient_id: love.id})

Amount.create({recipe_id: swamp_stew.id, ingredient_id: fudge.id})
Amount.create({recipe_id: swamp_stew.id, ingredient_id: mud.id})
Amount.create({recipe_id: swamp_stew.id, ingredient_id: love.id})
