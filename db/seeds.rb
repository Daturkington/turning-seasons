# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Quantity.destroy_all
Ingredient.destroy_all
Recipe.destroy_all

artichoke = Ingredient.create(name: "Artichoke", season: "june")
oil = Ingredient.create(name: "Glug of extra-virgin olive oil")
garlic = Ingredient.create(name: "Garlic glove")
salt = Ingredient.create(name: "Pinch of sea salt")
pepper = Ingredient.create(name: "Pinch of black pepper")
wine = Ingredient.create(name: "White wine")
burrata = Ingredient.create(name: "Burrata")
flatbread = Ingredient.create(name: "Flatbread")
pesto = Ingredient.create(name: "Pesto")
mint = Ingredient.create(name: "Springs of mint")

artichoke_recipe = Recipe.create(name:"Artichoke and burrata salad", author:"Tom Hunt", description: "Next time you make a recipe that calls for just the artichoke hearts, don’t discard the leaves – they can be frozen for later use or turned into a distinctive stock. Or, if you’d like to upcycle them into something a little more elaborate, this dish does just that. Burrata and artichokes are a match made in heaven, and the pesto seals the deal.", instructions: "Heat a thick-based frying pan on a medium heat with a good glug of extra-virgin olive oil. Add the artichoke leaves and the whole garlic clove, and season with sea salt. Fry gently for a few minutes, then add a slosh of white wine and cover.

Leave to steam for five minutes, or until the leaves become tender; add more wine, if need be. Remove the lid and cook to evaporate any remaining wine. Douse the artichoke leaves with a little more olive oil and fry gently until caramelised.

Serve as they are as a side vegetable, or turn into a centrepiece by serving on a platter with pieces of torn burrata, mint and crisp bread, and drizzled with pesto. Eat the leaves just as you would a boiled globe artichoke, pulling the flesh off with your teeth.")

Quantity.create(measurement: 1, ingredient: artichoke, recipe: artichoke_recipe)
Quantity.create(measurement: 1, ingredient: oil, recipe: artichoke_recipe)
Quantity.create(measurement: 1, ingredient: garlic, recipe: artichoke_recipe)
Quantity.create(measurement: 1, ingredient: salt, recipe: artichoke_recipe)
Quantity.create(measurement: 1, ingredient: pepper, recipe: artichoke_recipe)
Quantity.create(measurement: 1, ingredient: flatbread, recipe: artichoke_recipe)
Quantity.create(measurement: 1, ingredient: pesto, recipe: artichoke_recipe)
Quantity.create(measurement: 2, ingredient: mint, recipe: artichoke_recipe)

asparagus = Ingredient.create(name: "Asparagus", season: "june")
eggs = Ingredient.create(name: "Eggs")
butter = Ingredient.create(name: "Butter")
parsley = Ingredient.create(name: "Parsley")
hazelnuts = Ingredient.create(name: "hazelnuts")
sesame = Ingredient.create(name: "Sesame seeds")
dried_chillies = Ingredient.create(name: "Dried red chillies")
sugar = Ingredient.create(name: "Caster sugar")
anchovies = Ingredient.create(name: "Anchovies")

asparagus_recipe = Recipe.create(name:"Asparagus with fried egg and salsa macha", author:"Thomasina Miers", description: "Salsa macha is a Mexican sauce I am in love with. Garlic is poached gently in oil, followed by peanuts, dried red chillies and sesame seeds. The resulting (highly addictive) oil is drizzled over the hundreds of different seafood tostadas; a dish found up and down the coastline of Baja California.

But I think it adds excitement to almost anything it touches, and goodness knows we need a bit of that while we’re all still cooped up at home. This is my hazelnut version, which I think is glorious with asparagus.", instructions: "Start with the salsa macha. Heat half the oil in a small pan over a very low heat, add the garlic cloves and simmer in the oil until golden – about five minutes. Remove with a slotted spoon into a bowl.

Now fry the chillies until gently darkened in colour but not burnt – one to two minutes. Transfer to the bowl, and repeat with the hazelnuts, toasting until they, too, are a pale gold. Remove the nuts, roughly chopping half of them for the garnish, and put the rest in the bowl. Toast the sesame seeds in a dry frying pan.

Advertisement
Blitz the sesame seeds and chillies in an upright blender for one minute. Now add the whole hazelnuts, the garlic, sugar and anchovies (if you are using them) and pulse a few times. Add just enough oil to blitz to a rough paste. Add the rest of the oil, including the cooking oil, pulse once more, and taste, adding enough salt so that it tastes rounded and delicious.

When you are ready to eat, heat two serving plates. Steam the asparagus for five minutes, then transfer to a griddle and cook over a very high heat until it is beautifully charred and tender.

Meanwhile, melt the butter in the same frying pan you used to toast the sesame seeds, heating until it starts to turn deep brown. Transfer to a small bowl and pour in roughly the same amount of the salsa macha (be sure to stir before you add it). Keep this mixture warm.

Wipe the pan, then fry the eggs in a little more butter until crisp around the edges. Serve the eggs on top of the grilled asparagus, pour over the sauce, then scatter with the parsley and chopped nuts. You will need lovely bread to mop up the sauce.")

Quantity.create(measurement: 300, ingredient: asparagus, recipe: asparagus_recipe)
Quantity.create(measurement: 4, ingredient: eggs, recipe: asparagus_recipe)
Quantity.create(measurement: 60, ingredient: butter, recipe: asparagus_recipe)
Quantity.create(measurement: 1, ingredient: parsley, recipe: asparagus_recipe)
Quantity.create(measurement: 5, ingredient: garlic, recipe: asparagus_recipe)
Quantity.create(measurement: 60, ingredient: hazelnuts, recipe: asparagus_recipe)
Quantity.create(measurement: 40, ingredient: sesame, recipe: asparagus_recipe)
Quantity.create(measurement: 10, ingredient: dried_chillies, recipe: asparagus_recipe)
Quantity.create(measurement: 1, ingredient: sugar, recipe: asparagus_recipe)
Quantity.create(measurement: 3, ingredient: anchovies, recipe: asparagus_recipe)
Quantity.create(measurement: 300, ingredient: oil, recipe: asparagus_recipe)
Quantity.create(measurement: 1, ingredient: salt, recipe: asparagus_recipe)


aubergines = Ingredient.create(name: "Aubergine", season: "june")
pistachios = Ingredient.create(name: "Pistachios")
limes = Ingredient.create(name: "Limes")
greek_yoghurt = Ingredient.create(name: "Greek yoghurt")
sumac = Ingredient.create(name: "Sumac")

aubergine_recipe = Recipe.create(name:"Aubergine wedges with lime and pistachio crumb", author:"Anna Jones", description: "Aubergine doesn’t get much attention in my kitchen; my husband, John, doesn’t like it (though I think this is because he has eaten so many badly cooked aubergines – not by me, of course). But a couple of weeks ago, I found myself pining for aubergine like it was a long-lost friend. I cooked up some fat wedges until they were dark and golden on the outside, topped them with a lime and pistachio crumb, and ate a happy solo lunch with flatbreads and salted yoghurt. I also tried it paired with tamarind in this sweet-and-sour curry, spooned on to sticky jasmine rice. My aubergine craving was quelled and, of course, John licked his plate clean.", instructions: "Cut the aubergines lengthways into six to eight wedges (see picture), depending on their size. In a large, nonstick frying pan, heat the oil and fry the aubergines in batches, turning carefully. Once each batch is golden all over, set aside on a roasting tray and keep warm in the oven while you fry the rest.

Toast the pistachios, then chop and mix with the lime zest and a pinch of salt.

Mix the lime yoghurt ingredients in a small bowl.

Serve the aubergine wedges topped with the lime yoghurt and scattered with the chopped pistachios.")

Quantity.create(measurement: 3, ingredient: aubergines, recipe: aubergine_recipe)
Quantity.create(measurement: 3, ingredient: oil, recipe: aubergine_recipe)
Quantity.create(measurement: 100, ingredient: pistachios, recipe: aubergine_recipe)
Quantity.create(measurement: 2, ingredient: limes, recipe: aubergine_recipe)
Quantity.create(measurement: 1, ingredient: salt, recipe: aubergine_recipe)
Quantity.create(measurement: 250, ingredient: greek_yoghurt, recipe: aubergine_recipe)
Quantity.create(measurement: 1, ingredient: sumac, recipe: aubergine_recipe)

coconut_oil = Ingredient.create(name: "Coconut oil")
shallots = Ingredient.create(name: "Shallots", season: "june")
ginger = Ingredient.create(name: "Ginger")
lemongrass = Ingredient.create(name: "Lemongrass")
lime_leaves = Ingredient.create(name: "Makrut lime leave")
red_chilli = Ingredient.create(name: "Red chillies", season: "july")
ground_coriander = Ingredient.create(name: "Ground coriander")
vine_tomatoes = Ingredient.create(name: "Vine tomatoes", season: "june")
tamarind_paste = Ingredient.create(name: "Tamarind paste")
coconut_milk = Ingredient.create(name: "Coconut milk")
vegetable_stock = Ingredient.create(name: "Vegetable stock")
thai_basil = Ingredient.create(name: "Thai basil")

aubergine_recipe2 = Recipe.create(name:"Aubergine curry with basil and tamarind", author:"Anna Jones", description: "Use Thai basil if you can get it (although normal basil will do). If you can’t get lime leaves, add a good squeeze of lime into your curry at the end.", instructions: "Put a large pan over a medium heat, add a little oil, then fry the aubergine in batches until golden. Set aside.

In the same pan, add a little more oil, if needed, followed by the shallots and ginger. Cook on a medium heat for around 10 minutes, until the shallots are soft and sweet. Add the garlic, lemongrass, lime leaves, chilli and ground coriander, and cook for a further five minutes. Add the chopped tomatoes, aubergine, tamarind, coconut milk and stock, then simmer for 25‑30 minutes, until the aubergines have almost collapsed and the sauce is thick, adding a little more water or stock if needed.

Serve immediately with sticky rice, lots of Thai basil and fresh chilli.")

Quantity.create(ingredient: coconut_oil, recipe: aubergine_recipe2)
Quantity.create(measurement: 4, ingredient: aubergines, recipe: aubergine_recipe2)
Quantity.create(measurement: 4, ingredient: shallots, recipe: aubergine_recipe2)
Quantity.create(measurement: 5, ingredient: ginger, recipe: aubergine_recipe2)
Quantity.create(measurement: 3, ingredient: garlic, recipe: aubergine_recipe2)
Quantity.create(measurement: 1, ingredient: lemongrass, recipe: aubergine_recipe2)
Quantity.create(measurement: 2, ingredient: lime_leaves, recipe: aubergine_recipe2)
Quantity.create(measurement: 1, ingredient: red_chilli, recipe: aubergine_recipe2)
Quantity.create(measurement: 1, ingredient: ground_coriander, recipe: aubergine_recipe2)
Quantity.create(measurement: 300, ingredient: vine_tomatoes, recipe: aubergine_recipe2)
Quantity.create(measurement: 2, ingredient: tamarind_paste, recipe: aubergine_recipe2)
Quantity.create(measurement: 400, ingredient: coconut_milk, recipe: aubergine_recipe2)
Quantity.create(measurement: 200, ingredient: vegetable_stock, recipe: aubergine_recipe2)

ingredient1 = Ingredient.create(name: 'butter')
p ingredient1.errors
ingredient2 = Ingredient.create(name: 'digestive biscuits')
ingredient3 = Ingredient.create(name: 'soft cheese')
ingredient4 = Ingredient.create(name: 'icing sugar')
Ingredient.create(name: 'double cream')
Ingredient.create(name: 'vanilla pod')
Ingredient.create(name: "heavy cream")
Ingredient.create(name: "vanilla")
Ingredient.create(name: "milk")
Ingredient.create(name: "sugar")
Ingredient.create(name: "flour")
Ingredient.create(name: "whipping cream")
Ingredient.create(name: "eggs")
ingredient14 = Ingredient.create(name: 'strawberries', season: "june", description: 'The garden strawberry (or simply strawberry; Fragaria × ananassa) is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. ')
Ingredient.create(name: "tomato", season: "june", description: "Tomatoes were not grown in England until the 1590s. One of the earliest cultivators was John Gerard, a barber-surgeon.[29]:17 Gerard's Herbal, published in 1597, and largely plagiarized from continental sources, is also one of the earliest discussions of the tomato in England. Gerard knew the tomato was eaten in Spain and Italy.[29]:17 Nonetheless, he believed it was poisonous[29]:17 (in fact, the plant and raw fruit do have low levels of tomatine, but are not generally dangerous; see below). Gerard's views were influential, and the tomato was considered unfit for eating (though not necessarily poisonous) for many years in Britain and its North American colonies.")
Ingredient.create(name: "asparagus", season: "june", description: "Asparagus, or garden asparagus, folk name sparrow grass, scientific name Asparagus officinalis, is a perennial flowering plant species in the genus Asparagus. Its young shoots are used as a spring vegetable.")
Ingredient.create(name: "leek", season:"december", description:"The leek is a vegetable, a cultivar of Allium ampeloprasum, the broadleaf wild leek. The edible part of the plant is a bundle of leaf sheaths that is sometimes erroneously called a stem or stalk. The genus Allium also contains the onion, garlic, shallot, scallion, chive, and Chinese onion.")
Ingredient.create(name: "apple", season:"february", description:"An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today.")
Ingredient.create(name: "rhubarb", season:"march", description:"Rhubarb is a general term used for the cultivated plants in the genus Rheum in the family Polygonaceae. It is a herbaceous perennial growing from short, thick rhizomes. Historically, different plants have been called 'rhubarb' in English.")
Ingredient.create(name: "red onion", season:"march", description:"Red onions are cultivars of the onion (Allium cepa) with purplish-red skin and white flesh tinged with red. They are most commonly used in the culinary arts, but the skin of the red onion has also been used as a dye. These onions tend to be medium to large in size and have a sharp flavor and eye-watering qualities.")
Ingredient.create(name: "pumpkin", season:"october", description:"A pumpkin is a cultivar of winter squash that is round with smooth, slightly ribbed skin, and most often deep yellow to orange in coloration. The thick shell contains the seeds and pulp.")


recipe1 = Recipe.create(name: "Strawberry cheese cake", author: 'Amanda James', description: 'Combine two classic summer desserts in this no-bake cheesecake topped with a sweet strawberry sauce, ideal for al fresco entertaining', instructions: 'STEP 1

Lightly butter the base and sides of a deep 20cm springform cake tin and line the bottom with baking paper. Put the digestive biscuits into a food processor and whizz to crumbs, then add the melted butter and pulse again briefly. Tip into the tin, spread out and press down firmly to make an even base. Put into the fridge to set.

STEP 2

Put the soft cheese into a mixing bowl and use an electric whisk to whisk until fluffy. Add the icing sugar and gently whisk until smooth. Pour the cream into a separate bowl, add the vanilla seeds and extract, and whisk to very soft peaks. Gently fold the cream and diced strawberries into the soft cheese mixture.

STEP 3

Spoon the filling over the biscuit base and spread until even and smooth. Put the cheesecake into the fridge and leave to set for at least 4 hours but preferably overnight.

STEP 4

To make the topping, put the 100g of quartered strawberries into a small pan with the caster sugar and a splash of water, and cook over a low-medium heat for 8-10 minutes or until the sugar has dissolved and the strawberries have softened. Gently mash the strawberries in the pan to break them down, then pass through a sieve into another bowl and pour the juice back into the pan. Add the cornflour and stir constantly on a low heat until the sauce is thickened and smooth. Cool.

STEP 5

Once the cheesecake has set, take it out of the fridge, carefully remove from the tin and transfer to a serving plate. Pour over the strawberry sauce, top with the remaining halved strawberries and serve.')

Quantity.create(measurement: 150, ingredient_id: ingredient1, recipe_id: 1)
Quantity.create(measurement: 300, ingredient_id: ingredient2, recipe_id: 1)
Quantity.create(measurement: 650, ingredient_id: ingredient3, recipe_id: 1)
Quantity.create(measurement: 150, ingredient_id: ingredient4, recipe_id: 1)
Quantity.create(measurement: 300, ingredient: ingredient14, recipe: recipe1)
Quantity.create(measurement: 1, ingredient_id: 6, recipe_id: 1)
Quantity.create(measurement: 200, ingredient_id: 7, recipe_id: 1)

recipe2 = Recipe.create(name: "Strawberry Milkshake", author: "Julie Clark", description: "Learn how to make the creamiest homemade strawberry milkshakes with fresh strawberries. Top with homemade whipped cream for a delicious summer dessert!
 ", instructions: "1- Add the cream, vanilla and sugar to a medium bowl.
2- Whip with a stand or hand mixer until stiff peaks form. Keep refrigerated until ready to use. 3- Blend the ice cream, heavy cream, milk, vanilla and strawberries in a large blender until smooth and creamy.
4- Pour into 4 large glasses and top with whipped cream and extra strawberries if desired.
5- Serve immediately.")
p recipe2.errors

quantity1 = Quantity.create(measurement: 1, ingredient: ingredient1, recipe: recipe2)
p quantity1.errors
Quantity.create(measurement: 150, ingredient_id: ingredient2, recipe_id: recipe2)
Quantity.create(measurement: 2, ingredient_id: ingredient3, recipe_id: recipe2)
Quantity.create(measurement: 20, ingredient_id: ingredient4, recipe_id: recipe2)
Quantity.create(measurement: 300, ingredient_id: 12, recipe_id: recipe2)
Quantity.create(measurement: 1, ingredient_id: 7, recipe_id: recipe2)
Quantity.create(measurement: 200, ingredient_id: 13, recipe_id: recipe2)


Recipe.create(name:"Pumpkin soup", author:"Barney Desmazery", description:"Whip up this easy pumpkin soup as a starter for a dinner party or a light supper when you need a bit of comfort – it has a lovely silky texture", instructions:"1- Heat 2 tbsp olive oil in a large saucepan, then gently cook 2 finely chopped onions for 5 mins, until soft but not coloured.

2- Add 1kg pumpkin or squash, cut into chunks, to the pan, then carry on cooking for 8-10 mins, stirring occasionally until it starts to soften and turn golden.

3- Pour 700ml vegetable or chicken stock into the pan and season with salt and pepper. Bring to the boil, then simmer for 10 mins until the squash is very soft.

4- Pour 150ml double cream into the pan, bring back to the boil, then purée with a hand blender. For an extra-velvety consistency you can pour the soup through a fine sieve. The soup can now be frozen for up to 2 months.

5- To make the croutons: cut 4 slices wholemeal seeded bread into small squares.

6- Heat 2 tbsp olive oil in a frying pan, then fry the bread until it starts to become crisp.

7- Add a handful of pumpkin seeds to the pan, then cook for a few mins more until they are toasted. These can be made a day ahead and stored in an airtight container.

8- Reheat the soup if needed, taste for seasoning, then serve scattered with croutons and seeds and drizzled with more olive oil, if you want.")
Recipe.create(name:"Swedish meatballs with beetroot & apple salad", author:"Sara Buenfeld", description:"Grated courgette makes these lean pork meatballs extra juicy – serve with a creamy, herby sauce and a flavour-packed salad for a healthy, satisfying dinner", instructions:"1- To make the meatballs, tip the pork into a bowl and add the grated courgette and onion, half the dill, half the garlic and plenty of black pepper. Break in the egg and mix well with your hands. When everything is well combined, break off walnut-size pieces and roll into balls – you should end up with about 28. The mixture will be very soft.

2- Heat the oil in a large non-stick frying pan then gently fry the meatballs in two batches until firm and pale golden, turning them every now and then so they brown evenly. Each batch should take 6-8 mins.

3- Wipe out the pan to remove excess fat and add the remaining garlic and thyme, then pour in the bouillon and bring to the boil. Turn off the heat, stir in the crème fraîche and remaining dill, then return the meatballs to the pan and turn them in the mixture until coated.

4- For the salad, mix the apple, onion, parsley and capers with the lemon, then stir through the beetroot. Serve the salad alongside the meatballs. If you’re cooking for two people, eat half the meatballs and salad now, and chill the rest for another day – it will keep in the fridge for up to three days. Reheat the meatballs in the microwave until piping hot.")
Recipe.create(name:"Rhubarb & custard French toast", author:"Esther Clark", description:"Top French toast with zesty rhubarb and custard for a deliciously indulgent breakfast or brunch

", instructions:"1- Simmer the rhubarb with the vanilla pod, caster sugar and the zest and juice of the orange for 8-10 mins, or until the rhubarb is soft but holds its shape. Set aside.

2- Beat the egg with the milk in a shallow dish, add the bread and leave to soak for 1 min, turning once.

3- Fry in the butter over a medium heat for 4 mins, then flip and cook for 4 mins more, until golden on both sides. Top with the rhubarb and warm custard.")


Quantity.create(measurement: 200, ingredient_id: 19, recipe_id: 5)
Quantity.create(measurement: 1, ingredient_id: 21, recipe_id: 3)
Quantity.create(measurement: 150, ingredient_id: 20, recipe_id: 4)





















