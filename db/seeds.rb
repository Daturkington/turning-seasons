# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.create(name: 'butter')
Ingredient.create(name: 'digestive biscuits')
Ingredient.create(name: 'soft cheese')
Ingredient.create(name: 'icing sugar')
Ingredient.create(name: 'double cream')
Ingredient.create(name: 'vanilla pod')
Ingredient.create(name: 'stawberries', season: "june", description: 'The garden strawberry (or simply strawberry; Fragaria × ananassa) is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. ')

Recipe.create(name: "Strawberry cheese cake", author: 'Amanda James', description: 'Combine two classic summer desserts in this no-bake cheesecake topped with a sweet strawberry sauce, ideal for al fresco entertaining', instructions: 'STEP 1

Lightly butter the base and sides of a deep 20cm springform cake tin and line the bottom with baking paper. Put the digestive biscuits into a food processor and whizz to crumbs, then add the melted butter and pulse again briefly. Tip into the tin, spread out and press down firmly to make an even base. Put into the fridge to set.

STEP 2

Put the soft cheese into a mixing bowl and use an electric whisk to whisk until fluffy. Add the icing sugar and gently whisk until smooth. Pour the cream into a separate bowl, add the vanilla seeds and extract, and whisk to very soft peaks. Gently fold the cream and diced strawberries into the soft cheese mixture.

STEP 3

Spoon the filling over the biscuit base and spread until even and smooth. Put the cheesecake into the fridge and leave to set for at least 4 hours but preferably overnight.

STEP 4

To make the topping, put the 100g of quartered strawberries into a small pan with the caster sugar and a splash of water, and cook over a low-medium heat for 8-10 minutes or until the sugar has dissolved and the strawberries have softened. Gently mash the strawberries in the pan to break them down, then pass through a sieve into another bowl and pour the juice back into the pan. Add the cornflour and stir constantly on a low heat until the sauce is thickened and smooth. Cool.

STEP 5

Once the cheesecake has set, take it out of the fridge, carefully remove from the tin and transfer to a serving plate. Pour over the strawberry sauce, top with the remaining halved strawberries and serve.')

Quantity.new(measurement: 150, ingredient_id: 1, recipe_id: 1)
Quantity.new(measurement: 300, ingredient_id: 2, recipe_id: 1)
Quantity.new(measurement: 650, ingredient_id: 3, recipe_id: 1)
Quantity.new(measurement: 150, ingredient_id: 4, recipe_id: 1)
Quantity.new(measurement: 300, ingredient_id: 5, recipe_id: 1)
Quantity.new(measurement: 1, ingredient_id: 6, recipe_id: 1)
Quantity.new(measurement: 200, ingredient_id: 7, recipe_id: 1)
