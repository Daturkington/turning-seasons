require "open-uri"
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

file1 = URI.open('https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2016/06/sicilian-style-artichoke-hearts-with-burrata.jpg?itok=1LF46CyS')
file2 = URI.open('https://i.guim.co.uk/img/media/61939a658cec630bd704d57c70f00b108abc4479/151_12_1672_1286/master/1672.jpg?width=1920&quality=85&auto=format&fit=max&s=34532389f604301513b6142f62c4b8dd')
file3 = URI.open('https://i.guim.co.uk/img/media/2dcacb8daca810000e60fedac6a4dfd8d9fe3b60/0_3_2667_2666/master/2667.jpg?width=620&quality=45&auto=format&fit=max&dpr=2&s=53d7d7e19ae89a4eb53c3eef529291e1')
file4 = URI.open('https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--1048_11.jpg?itok=-ZzIDbB6')
file5 = URI.open('https://i.guim.co.uk/img/media/55e61a76e102d82860e7d787e49475bc315ad00a/243_460_8409_5045/master/8409.jpg?width=1300&quality=45&auto=format&fit=max&dpr=2&s=ca0c411e761e1e733ffbd49d981ef550')
file6 = URI.open('https://i.guim.co.uk/img/media/43a71b25c31eebbc2cae3bfe5aa037a84aaa0214/0_3304_4912_2948/master/4912.jpg?width=620&quality=45&auto=format&fit=max&dpr=2&s=003b249a9a0b9ae994827b43f2492b05')
file7 = URI.open('https://i.guim.co.uk/img/media/4a5a61a3d7247d13301b7b0a8a2dd883be1ba54c/0_2138_4912_2944/master/4912.jpg?width=620&quality=45&auto=format&fit=max&dpr=2&s=6762a630fa66755de5b4679aefd41d7f')

artichoke = Ingredient.create(name: "artichoke", season: [6, 7, 8, 9, 10, 11])
oil = Ingredient.create(name: "extra-virgin olive oil")
garlic = Ingredient.create(name: "garlic")
salt = Ingredient.create(name: "sea salt")
pepper = Ingredient.create(name: "black pepper")
wine = Ingredient.create(name: "white wine")
burrata = Ingredient.create(name: "burrata")
flatbread = Ingredient.create(name: "flatbread")
pesto = Ingredient.create(name: "pesto")
mint = Ingredient.create(name: "springs of mint")

artichoke_recipe = Recipe.new(name:"Artichoke and burrata salad", author:"Tom Hunt", servings: 2, description: "Next time you make a recipe that calls for just the artichoke hearts, don’t discard the leaves – they can be frozen for later use or turned into a distinctive stock. Or, if you’d like to upcycle them into something a little more elaborate, this dish does just that. Burrata and artichokes are a match made in heaven, and the pesto seals the deal.", instructions: "Heat a thick-based frying pan on a medium heat with a good glug of extra-virgin olive oil. Add the artichoke leaves and the whole garlic clove, and season with sea salt. Fry gently for a few minutes, then add a slosh of white wine and cover.

Leave to steam for five minutes, or until the leaves become tender; add more wine, if need be. Remove the lid and cook to evaporate any remaining wine. Douse the artichoke leaves with a little more olive oil and fry gently until caramelised.

Serve as they are as a side vegetable, or turn into a centrepiece by serving on a platter with pieces of torn burrata, mint and crisp bread, and drizzled with pesto. Eat the leaves just as you would a boiled globe artichoke, pulling the flesh off with your teeth." )

Quantity.create(measurement: 1, ingredient: artichoke, recipe: artichoke_recipe)
Quantity.create(ingredient: oil, recipe: artichoke_recipe)
Quantity.create(measurement: 1, ingredient: garlic, recipe: artichoke_recipe, unit: "clove")
Quantity.create(ingredient: salt, recipe: artichoke_recipe, unit: "pinch of")
Quantity.create(ingredient: pepper, recipe: artichoke_recipe, unit: "pinch of")
Quantity.create(measurement: 1, ingredient: flatbread, recipe: artichoke_recipe)
Quantity.create(ingredient: pesto, recipe: artichoke_recipe)
Quantity.create(measurement: 2, ingredient: mint, recipe: artichoke_recipe, unit: "sprigs")

artichoke_recipe.photo.attach(io: file1, filename: 'artichoke_image.jpg', content_type: 'image/jpg')
artichoke_recipe.save

asparagus = Ingredient.create(name: "asparagus", season: [4, 5, 6])
eggs = Ingredient.create(name: "eggs")
butter = Ingredient.create(name: "butter")
parsley = Ingredient.create(name: "parsley")
hazelnuts = Ingredient.create(name: "hazelnuts")
sesame = Ingredient.create(name: "sesame seeds")
dried_chillies = Ingredient.create(name: "dried red chillies")
sugar = Ingredient.create(name: "caster sugar")
anchovies = Ingredient.create(name: "anchovies")

asparagus_recipe = Recipe.new(name:"Asparagus with fried egg and salsa macha", author:"Thomasina Miers", servings: 2, cooking_time: 25, description: "Salsa macha is a Mexican sauce I am in love with. Garlic is poached gently in oil, followed by peanuts, dried red chillies and sesame seeds. The resulting (highly addictive) oil is drizzled over the hundreds of different seafood tostadas; a dish found up and down the coastline of Baja California.

But I think it adds excitement to almost anything it touches, and goodness knows we need a bit of that while we’re all still cooped up at home. This is my hazelnut version, which I think is glorious with asparagus.", instructions: "Start with the salsa macha. Heat half the oil in a small pan over a very low heat, add the garlic cloves and simmer in the oil until golden – about five minutes. Remove with a slotted spoon into a bowl.

Now fry the chillies until gently darkened in colour but not burnt – one to two minutes. Transfer to the bowl, and repeat with the hazelnuts, toasting until they, too, are a pale gold. Remove the nuts, roughly chopping half of them for the garnish, and put the rest in the bowl. Toast the sesame seeds in a dry frying pan.

Advertisement
Blitz the sesame seeds and chillies in an upright blender for one minute. Now add the whole hazelnuts, the garlic, sugar and anchovies (if you are using them) and pulse a few times. Add just enough oil to blitz to a rough paste. Add the rest of the oil, including the cooking oil, pulse once more, and taste, adding enough salt so that it tastes rounded and delicious.

When you are ready to eat, heat two serving plates. Steam the asparagus for five minutes, then transfer to a griddle and cook over a very high heat until it is beautifully charred and tender.

Meanwhile, melt the butter in the same frying pan you used to toast the sesame seeds, heating until it starts to turn deep brown. Transfer to a small bowl and pour in roughly the same amount of the salsa macha (be sure to stir before you add it). Keep this mixture warm.

Wipe the pan, then fry the eggs in a little more butter until crisp around the edges. Serve the eggs on top of the grilled asparagus, pour over the sauce, then scatter with the parsley and chopped nuts. You will need lovely bread to mop up the sauce.")

Quantity.create(measurement: 300, ingredient_id: asparagus.id, recipe: asparagus_recipe, unit: "g")
Quantity.create(measurement: 4, ingredient_id: eggs.id, recipe: asparagus_recipe)
Quantity.create(measurement: 60, ingredient_id: butter.id, recipe: asparagus_recipe, unit: "g")
Quantity.create(measurement: 1, ingredient_id: parsley.id, recipe: asparagus_recipe, unit: "handful")
Quantity.create(measurement: 5, ingredient_id: garlic.id, recipe: asparagus_recipe , unit: "cloves")
Quantity.create(measurement: 60, ingredient_id: hazelnuts.id, recipe: asparagus_recipe, unit: "g")
Quantity.create(measurement: 40, ingredient_id: sesame.id, recipe: asparagus_recipe, unit: "g")
Quantity.create(measurement: 10, ingredient_id: dried_chillies.id, recipe: asparagus_recipe, unit: "g")
Quantity.create(measurement: 1, ingredient_id: sugar.id, recipe: asparagus_recipe, unit: "tsp")
Quantity.create(measurement: 3, ingredient_id: anchovies.id, recipe: asparagus_recipe)
Quantity.create(measurement: 300, ingredient_id: oil.id, recipe: asparagus_recipe, unit: "ml")
Quantity.create(measurement: 1, ingredient_id: salt.id, recipe: asparagus_recipe, unit: "tsp")

asparagus_recipe.photo.attach(io: file2, filename: 'asparagus_image.jpg', content_type: 'image/jpg')
asparagus_recipe.save

aubergines = Ingredient.create(name: "aubergine", season: [5, 6, 7, 8, 9, 10])
pistachios = Ingredient.create(name: "pistachios")
limes = Ingredient.create(name: "limes")
greek_yoghurt = Ingredient.create(name: "greek yoghurt")
sumac = Ingredient.create(name: "sumac")

aubergine_recipe = Recipe.new(name:"Aubergine wedges with lime and pistachio crumb", author:"Anna Jones", servings: 4, cooking_time: 30, description: "Aubergine doesn’t get much attention in my kitchen; my husband, John, doesn’t like it (though I think this is because he has eaten so many badly cooked aubergines – not by me, of course). But a couple of weeks ago, I found myself pining for aubergine like it was a long-lost friend. I cooked up some fat wedges until they were dark and golden on the outside, topped them with a lime and pistachio crumb, and ate a happy solo lunch with flatbreads and salted yoghurt. I also tried it paired with tamarind in this sweet-and-sour curry, spooned on to sticky jasmine rice. My aubergine craving was quelled and, of course, John licked his plate clean.", instructions: "Cut the aubergines lengthways into six to eight wedges (see picture), depending on their size. In a large, nonstick frying pan, heat the oil and fry the aubergines in batches, turning carefully. Once each batch is golden all over, set aside on a roasting tray and keep warm in the oven while you fry the rest.

Toast the pistachios, then chop and mix with the lime zest and a pinch of salt.

Mix the lime yoghurt ingredients in a small bowl.

Serve the aubergine wedges topped with the lime yoghurt and scattered with the chopped pistachios.")

Quantity.create(measurement: 3, ingredient_id: aubergines.id, recipe: aubergine_recipe)
Quantity.create(measurement: 3, ingredient_id: oil.id, recipe: aubergine_recipe, unit: "tbsp")
Quantity.create(measurement: 100, ingredient_id: pistachios.id, recipe: aubergine_recipe, unit: "g")
Quantity.create(measurement: 2, ingredient_id: limes.id, recipe: aubergine_recipe)
Quantity.create(measurement: 1, ingredient_id: salt.id, recipe: aubergine_recipe)
Quantity.create(measurement: 250, ingredient_id: greek_yoghurt.id, recipe: aubergine_recipe, unit: "ml")
Quantity.create(measurement: 1, ingredient_id: sumac.id, recipe: aubergine_recipe, unit: "pinch")

aubergine_recipe.photo.attach(io: file3, filename: 'aubergine_image.jpg', content_type: 'image/jpg')
aubergine_recipe.save

coconut_oil = Ingredient.create(name: "coconut oil")
shallots = Ingredient.create(name: "shallots")
ginger = Ingredient.create(name: "ginger")
lemongrass = Ingredient.create(name: "lemongrass")
lime_leaves = Ingredient.create(name: "makrut lime leave")
red_chilli = Ingredient.create(name: "red chillies")
ground_coriander = Ingredient.create(name: "ground coriander")
vine_tomatoes = Ingredient.create(name: "vine tomatoes", season: [6, 7, 8, 9, 10])
tamarind_paste = Ingredient.create(name: "tamarind paste")
coconut_milk = Ingredient.create(name: "coconut milk")
vegetable_stock = Ingredient.create(name: "vegetable stock")
thai_basil = Ingredient.create(name: "thai basil")

aubergine_recipe2 = Recipe.new(name:"Aubergine curry with basil and tamarind", author:"Anna Jones", servings: 4, cooking_time: 70, description: "Use Thai basil if you can get it (although normal basil will do). If you can’t get lime leaves, add a good squeeze of lime into your curry at the end.", instructions: "Put a large pan over a medium heat, add a little oil, then fry the aubergine in batches until golden. Set aside.

In the same pan, add a little more oil, if needed, followed by the shallots and ginger. Cook on a medium heat for around 10 minutes, until the shallots are soft and sweet. Add the garlic, lemongrass, lime leaves, chilli and ground coriander, and cook for a further five minutes. Add the chopped tomatoes, aubergine, tamarind, coconut milk and stock, then simmer for 25‑30 minutes, until the aubergines have almost collapsed and the sauce is thick, adding a little more water or stock if needed.

Serve immediately with sticky rice, lots of Thai basil and fresh chilli.")

Quantity.create(measurement: 1, ingredient_id: coconut_oil.id, recipe: aubergine_recipe2)
Quantity.create(measurement: 4, ingredient_id: aubergines.id, recipe: aubergine_recipe2)
Quantity.create(measurement: 4, ingredient_id: shallots.id, recipe: aubergine_recipe2)
Quantity.create(measurement: 5, ingredient_id: ginger.id, recipe: aubergine_recipe2, unit: "cm")
Quantity.create(measurement: 3, ingredient_id: garlic.id, recipe: aubergine_recipe2, unit: "cloves")
Quantity.create(measurement: 1, ingredient_id: lemongrass.id, recipe: aubergine_recipe2, unit: "stalk")
Quantity.create(measurement: 2, ingredient_id: lime_leaves.id, recipe: aubergine_recipe2)
Quantity.create(measurement: 1, ingredient_id: red_chilli.id, recipe: aubergine_recipe2)
Quantity.create(measurement: 1, ingredient_id: ground_coriander.id, recipe: aubergine_recipe2, unit: "tsp")
Quantity.create(measurement: 300, ingredient_id: vine_tomatoes.id, recipe: aubergine_recipe2, unit: "g")
Quantity.create(measurement: 2, ingredient_id: tamarind_paste.id, recipe: aubergine_recipe2, unit: "tbsp")
Quantity.create(measurement: 400, ingredient_id: coconut_milk.id, recipe: aubergine_recipe2, unit: "ml")
Quantity.create(measurement: 200, ingredient_id: vegetable_stock.id, recipe: aubergine_recipe2, unit: "ml")

aubergine_recipe2.photo.attach(io: file4, filename: 'aubergine2_image.jpg', content_type: 'image/jpg')
aubergine_recipe2.save

beetroot = Ingredient.create(name: "beetroot", season: [6, 7, 8, 9, 10, 11, 12, 1, 2, 3])
black_olives = Ingredient.create(name: "black olives")
cumin_seeds = Ingredient.create(name: "cumin seeds")
coriander_seeds = Ingredient.create(name: "coriander seeds")
nigella_seeds = Ingredient.create(name: "nigella seeds")
red_wine_vinegar = Ingredient.create(name: "red wine vinager")
orange = Ingredient.create(name: "orange", season: [1, 2, 3])
feta = Ingredient.create(name: "feta")

beetroot_recipe = Recipe.new(name:"Whole baked beetroot, roasted beet leaves, whipped feta, crisp olives", servings: 4, cooking_time: 85, author:"Anna Jones", description: "This is as suited to the oven as it is to the barbecue. The simple foil-covered method for roasting works every time", instructions: "Heat the oven to 180C/160C fan/390F/gas 4. If the beetroots still have their leafy tops, cut them off close to the top of the beet, leaving yourself enough to grip.

Wash and scrub the beetroots, wrap in foil parcels and put in the hot oven or on the embers of the barbecue. Cook until they are soft all the way through – how long this takes will depend on their size: anywhere between 50-80 minutes. Check every 20 minutes or so: if they are starting to look dry or are scorching on the bottoms, dribble a tablespoon of water over them before rewrapping tightly. They are done when a knife slides easily to the centre.

Remove from the oven and leave to cool a little before peeling. To peel, hold one in a paper towel and use the edges of the paper to rub the skin away. This should happen easily; if it doesn’t, the beets likely need to cook for a little longer. When you have peeled them all, cut into chunks and slices.

Wash the beetroot leaves and toss with the olives, a little oil, salt and pepper, and roast for 10 minutes. Meanwhile, in a small frying pan, toast the spices until they smell fragrant. Toss the beets and leaves with the spices, oil, vinegar and orange zest, with more salt and pepper if needed.

In a food processor, whip the feta with the yoghurt until it is creamy (there may be a few small bits of feta left in, but that’s OK).

Serve the warm beetroot on top of the cold, whipped feta with the bright purple juice from the beetroots spooned over the top.")

Quantity.create(measurement: 500, ingredient_id: beetroot.id, recipe: beetroot_recipe, unit: "g")
Quantity.create(measurement: 50, ingredient_id: black_olives.id, recipe: beetroot_recipe, unit: "g")
Quantity.create(measurement: 2, ingredient_id: sesame.id, recipe: beetroot_recipe, unit: "tbsp")
Quantity.create(measurement: 1, ingredient_id: cumin_seeds.id, recipe: beetroot_recipe, unit: "tsp")
Quantity.create(measurement: 1, ingredient_id: nigella_seeds.id, recipe: beetroot_recipe, unit: "tsp")
Quantity.create(measurement: 2, ingredient_id: oil.id, recipe: beetroot_recipe, unit: "tbsp")
Quantity.create(measurement: 2, ingredient_id: red_wine_vinegar.id, recipe: beetroot_recipe, unit: "tbsp")
Quantity.create(measurement: 1, ingredient_id: orange.id, recipe: beetroot_recipe)
Quantity.create(measurement: 100, ingredient_id: feta.id, recipe: beetroot_recipe, unit: "g")
Quantity.create(measurement: 50, ingredient_id: greek_yoghurt.id, recipe: beetroot_recipe, unit: "tbsp")

beetroot_recipe.photo.attach(io: file5, filename: 'beetroot_image.jpg', content_type: 'image/jpg')
beetroot_recipe.save


broad_beans = Ingredient.create(name: "broad beans", season: [5, 6, 7, 8, 9])
carrots = Ingredient.create(name: "carrots", season: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
coppa = Ingredient.create(name: "coppa")
harissa_paste = Ingredient.create(name: "harrisa paste")
wholegrain_mustard = Ingredient.create(name: "wholegrain mustard")
white_wine_vinegar = Ingredient.create(name: "white wine vinagar")
egg = Ingredient.create(name: "egg")

broadbean_recipe = Recipe.new(name: "Harissa broad beans, coppa salad", author: "Nigel Slater", description: "I am hardly the most patient of cooks, but I can always find a few minutes to skin a broad bean. Once cooked, they pop from their papery skins easily enough and the difference is astonishing. A skinned broad bean is altogether fresher and greener tasting. I suggest you start with just 1 tsp of harissa paste for the dressing, adding more if you like a little more heat. A little sugar mellows the result.", instructions: "Peel the garlic and mash it to a paste using a pestle and mortar. Stir in the harissa paste, mustard and vinegar then mix in the egg yolk and the sugar. You should have a glossy, paste-like dressing. The flavour at this point will be quite strong. It will soften as you fold in the other ingredients.

Cook the broad beans in boiling, lightly salted water for 4-8 minutes, depending on their size. (They should be quite small at this time of year.) Drain them and, if you wish, pop them from their papery skins by holding them between your finger and thumb. It doesn’t take long once you get into the swing of it. Peel the carrots, unless they are very young, then cut into thin discs and put them into a mixing bowl with the broad beans.

Scrape the dressing into the broad beans and carrots and fold gently to mix. Serve with the slices of coppa.")

Quantity.create(measurement: 300, ingredient_id: broad_beans.id, recipe: broadbean_recipe, unit: "g")
Quantity.create(measurement: 150, ingredient_id: carrots.id, recipe: broadbean_recipe, unit: "g")
Quantity.create(measurement: 75, ingredient_id: coppa.id, recipe: broadbean_recipe, unit: "g")
Quantity.create(measurement: 1, ingredient_id: garlic.id, recipe: broadbean_recipe, unit: "clove")
Quantity.create(measurement: 2, ingredient_id: harissa_paste.id, recipe: broadbean_recipe, unit: "tsp")
Quantity.create(measurement: 2, ingredient_id: wholegrain_mustard.id, recipe: broadbean_recipe, unit: "tsp")
Quantity.create(measurement: 2, ingredient_id: white_wine_vinegar.id, recipe: broadbean_recipe, unit: "tsp")
Quantity.create(measurement: 1, ingredient_id: egg.id, recipe: broadbean_recipe)
Quantity.create(measurement: 1, ingredient_id: sugar.id, recipe: broadbean_recipe, unit: "tsp")

broadbean_recipe.photo.attach(io: file6, filename: 'broadbean_image.jpg', content_type: 'image/jpg')
broadbean_recipe.save

brown_lentils = Ingredient.create(name: "small brown lentils")
cracked_wheat = Ingredient.create(name: "cracked wheat")
spring_onions = Ingredient.create(name: "spring onions")
sprouted_mung_beans = Ingredient.create(name: "sprouted mung beans")
lemon_juice = Ingredient.create(name: "lemon juice")
micro_herbs = Ingredient.create(name: "micro herbs")

asparagus_recipe2 = Recipe.create(name: "Grilled asparagus, lentils and wheat", author: "Nigel Slater", servings: 4, description: "Most of the cracked wheat sold here, also known as bulgur or pourgouri, has already been broken, cooked and dried and doesn’t need the 20 minutes of boiling that some packets suggest. Instead, cover the grains by a centimetre or so of just-boiled water from the kettle, cover and leave for 15 minutes. Job done. Tenderly running a fork through the swollen grains will give a lighter, more open texture. I use young sprouting herbs in this salad, mostly coriander and beetroot, but any “micro-salad” – such as radish sprouts – would add a similar freshness.", instructions: "Boil the lentils in deep, unsalted water for 20 minutes until tender, but still with a nutty bite to them, then drain and set aside.

Put the kettle on. Tip the cracked wheat into a mixing bowl then, when the kettle has boiled, pour enough boiling water over the grains to cover by a centimetre or so. Cover the bowl with a lid and leave for 15 minutes.

Get a griddle pan hot. Trim the ends from the asparagus. Toss the spears in a little olive oil, just enough to make them shine, then place on the griddle and cook at a moderate heat for 3 or 4 minutes. Turn the spears over – it’s simplest using kitchen tongs – once the undersides are browning patchily and continue cooking for a further 3 or 4 minutes until the spears are just tender enough to bend a little. Remove the asparagus from the griddle and cut into short pieces, 3 or 4cm in length.

Put the parsley into a mixing bowl. Trim and finely slice the spring onions into rings and add them to the parsley. Rinse the mung beans in cold water, drain thoroughly and fold through the parsley and spring onions.

Check that the cracked wheat has absorbed all the water. Loosen the mass of grains by teasing them with the tines of a fork. Add the drained lentils, asparagus and wheat to the parsley and spring onions.

Mix together the lemon juice and olive oil, then season with salt and a little pepper. You want a really bright-tasting, citrus-sharp dressing. Pour over the salad and turn briefly with a fork to combine.

Add the young herbs to the salad then pile on to a serving dish.")

Quantity.create(measurement: 100, ingredient_id: brown_lentils.id, recipe: asparagus_recipe2, unit: "g")
Quantity.create(measurement: 50, ingredient_id: cracked_wheat.id, recipe: asparagus_recipe2, unit: "g")
Quantity.create(measurement: 250, ingredient_id: asparagus.id, recipe: asparagus_recipe2, unit: "g")
Quantity.create(measurement: 6, ingredient_id: parsley.id, recipe: asparagus_recipe2, unit: "tbsp")
Quantity.create(measurement: 2, ingredient_id: spring_onions.id, recipe: asparagus_recipe2)
Quantity.create(measurement: 50, ingredient_id: sprouted_mung_beans.id, recipe: asparagus_recipe2, unit: "g")
Quantity.create(measurement: 80, ingredient_id: lemon_juice.id, recipe: asparagus_recipe2, unit: "ml")
Quantity.create(measurement: 50, ingredient_id: oil.id, recipe: asparagus_recipe2, unit: "ml")
Quantity.create(measurement: 25, ingredient_id: micro_herbs.id, recipe: asparagus_recipe2, unit: "g")

asparagus_recipe2.photo.attach(io: file7, filename: 'asparagus2_image.jpg', content_type: 'image/jpg')
asparagus_recipe2.save

# ingredient1 = Ingredient.create(name: 'butter')
# ingredient2 = Ingredient.create(name: 'digestive biscuits')
# ingredient3 = Ingredient.create(name: 'soft cheese')
# ingredient4 = Ingredient.create(name: 'icing sugar')
# Ingredient.create(name: 'double cream')
# Ingredient.create(name: 'vanilla pod')
# Ingredient.create(name: "heavy cream")
# Ingredient.create(name: "vanilla")
# Ingredient.create(name: "milk")
# Ingredient.create(name: "sugar")
# Ingredient.create(name: "flour")
# Ingredient.create(name: "whipping cream")
# Ingredient.create(name: "eggs")
# ingredient14 = Ingredient.create(name: 'strawberries', season: "june", description: 'The garden strawberry (or simply strawberry; Fragaria × ananassa) is a widely grown hybrid species of the genus Fragaria, collectively known as the strawberries, which are cultivated worldwide for their fruit. ')
# Ingredient.create(name: "tomato", season: "june", description: "Tomatoes were not grown in England until the 1590s. One of the earliest cultivators was John Gerard, a barber-surgeon.[29]:17 Gerard's Herbal, published in 1597, and largely plagiarized from continental sources, is also one of the earliest discussions of the tomato in England. Gerard knew the tomato was eaten in Spain and Italy.[29]:17 Nonetheless, he believed it was poisonous[29]:17 (in fact, the plant and raw fruit do have low levels of tomatine, but are not generally dangerous; see below). Gerard's views were influential, and the tomato was considered unfit for eating (though not necessarily poisonous) for many years in Britain and its North American colonies.")
# Ingredient.create(name: "asparagus", season: "june", description: "Asparagus, or garden asparagus, folk name sparrow grass, scientific name Asparagus officinalis, is a perennial flowering plant species in the genus Asparagus. Its young shoots are used as a spring vegetable.")
# Ingredient.create(name: "leek", season:"december", description:"The leek is a vegetable, a cultivar of Allium ampeloprasum, the broadleaf wild leek. The edible part of the plant is a bundle of leaf sheaths that is sometimes erroneously called a stem or stalk. The genus Allium also contains the onion, garlic, shallot, scallion, chive, and Chinese onion.")
# Ingredient.create(name: "apple", season:"february", description:"An apple is an edible fruit produced by an apple tree. Apple trees are cultivated worldwide and are the most widely grown species in the genus Malus. The tree originated in Central Asia, where its wild ancestor, Malus sieversii, is still found today.")
# Ingredient.create(name: "rhubarb", season:"march", description:"Rhubarb is a general term used for the cultivated plants in the genus Rheum in the family Polygonaceae. It is a herbaceous perennial growing from short, thick rhizomes. Historically, different plants have been called 'rhubarb' in English.")
# Ingredient.create(name: "red onion", season:"march", description:"Red onions are cultivars of the onion (Allium cepa) with purplish-red skin and white flesh tinged with red. They are most commonly used in the culinary arts, but the skin of the red onion has also been used as a dye. These onions tend to be medium to large in size and have a sharp flavor and eye-watering qualities.")
# Ingredient.create(name: "pumpkin", season:"october", description:"A pumpkin is a cultivar of winter squash that is round with smooth, slightly ribbed skin, and most often deep yellow to orange in coloration. The thick shell contains the seeds and pulp.")


# recipe1 = Recipe.create(name: "Strawberry cheese cake", author: 'Amanda James', description: 'Combine two classic summer desserts in this no-bake cheesecake topped with a sweet strawberry sauce, ideal for al fresco entertaining', instructions: 'STEP 1

# Lightly butter the base and sides of a deep 20cm springform cake tin and line the bottom with baking paper. Put the digestive biscuits into a food processor and whizz to crumbs, then add the melted butter and pulse again briefly. Tip into the tin, spread out and press down firmly to make an even base. Put into the fridge to set.

# STEP 2

# Put the soft cheese into a mixing bowl and use an electric whisk to whisk until fluffy. Add the icing sugar and gently whisk until smooth. Pour the cream into a separate bowl, add the vanilla seeds and extract, and whisk to very soft peaks. Gently fold the cream and diced strawberries into the soft cheese mixture.

# STEP 3

# Spoon the filling over the biscuit base and spread until even and smooth. Put the cheesecake into the fridge and leave to set for at least 4 hours but preferably overnight.

# STEP 4

# To make the topping, put the 100g of quartered strawberries into a small pan with the caster sugar and a splash of water, and cook over a low-medium heat for 8-10 minutes or until the sugar has dissolved and the strawberries have softened. Gently mash the strawberries in the pan to break them down, then pass through a sieve into another bowl and pour the juice back into the pan. Add the cornflour and stir constantly on a low heat until the sauce is thickened and smooth. Cool.

# STEP 5

# Once the cheesecake has set, take it out of the fridge, carefully remove from the tin and transfer to a serving plate. Pour over the strawberry sauce, top with the remaining halved strawberries and serve.')

# Quantity.create(measurement: 150, ingredient_id: ingredient1, recipe_id: 1)
# Quantity.create(measurement: 300, ingredient_id: ingredient2, recipe_id: 1)
# Quantity.create(measurement: 650, ingredient_id: ingredient3, recipe_id: 1)
# Quantity.create(measurement: 150, ingredient_id: ingredient4, recipe_id: 1)
# Quantity.create(measurement: 300, ingredient: ingredient14, recipe: recipe1)
# Quantity.create(measurement: 1, ingredient_id: 6, recipe_id: 1)
# Quantity.create(measurement: 200, ingredient_id: 7, recipe_id: 1)

# recipe2 = Recipe.create(name: "Strawberry Milkshake", author: "Julie Clark", description: "Learn how to make the creamiest homemade strawberry milkshakes with fresh strawberries. Top with homemade whipped cream for a delicious summer dessert!
#  ", instructions: "1- Add the cream, vanilla and sugar to a medium bowl.
# 2- Whip with a stand or hand mixer until stiff peaks form. Keep refrigerated until ready to use. 3- Blend the ice cream, heavy cream, milk, vanilla and strawberries in a large blender until smooth and creamy.
# 4- Pour into 4 large glasses and top with whipped cream and extra strawberries if desired.
# 5- Serve immediately.")

# quantity1 = Quantity.create(measurement: 1, ingredient: ingredient1, recipe: recipe2)
# p quantity1.errors
# Quantity.create(measurement: 150, ingredient_id: ingredient2, recipe_id: recipe2)
# Quantity.create(measurement: 2, ingredient_id: ingredient3, recipe_id: recipe2)
# Quantity.create(measurement: 20, ingredient_id: ingredient4, recipe_id: recipe2)
# Quantity.create(measurement: 300, ingredient_id: 12, recipe_id: recipe2)
# Quantity.create(measurement: 1, ingredient_id: 7, recipe_id: recipe2)
# Quantity.create(measurement: 200, ingredient_id: 13, recipe_id: recipe2)


# Recipe.create(name:"Pumpkin soup", author:"Barney Desmazery", description:"Whip up this easy pumpkin soup as a starter for a dinner party or a light supper when you need a bit of comfort – it has a lovely silky texture", instructions:"1- Heat 2 tbsp olive oil in a large saucepan, then gently cook 2 finely chopped onions for 5 mins, until soft but not coloured.

# 2- Add 1kg pumpkin or squash, cut into chunks, to the pan, then carry on cooking for 8-10 mins, stirring occasionally until it starts to soften and turn golden.

# 3- Pour 700ml vegetable or chicken stock into the pan and season with salt and pepper. Bring to the boil, then simmer for 10 mins until the squash is very soft.

# 4- Pour 150ml double cream into the pan, bring back to the boil, then purée with a hand blender. For an extra-velvety consistency you can pour the soup through a fine sieve. The soup can now be frozen for up to 2 months.

# 5- To make the croutons: cut 4 slices wholemeal seeded bread into small squares.

# 6- Heat 2 tbsp olive oil in a frying pan, then fry the bread until it starts to become crisp.

# 7- Add a handful of pumpkin seeds to the pan, then cook for a few mins more until they are toasted. These can be made a day ahead and stored in an airtight container.

# 8- Reheat the soup if needed, taste for seasoning, then serve scattered with croutons and seeds and drizzled with more olive oil, if you want.")
# Recipe.create(name:"Swedish meatballs with beetroot & apple salad", author:"Sara Buenfeld", description:"Grated courgette makes these lean pork meatballs extra juicy – serve with a creamy, herby sauce and a flavour-packed salad for a healthy, satisfying dinner", instructions:"1- To make the meatballs, tip the pork into a bowl and add the grated courgette and onion, half the dill, half the garlic and plenty of black pepper. Break in the egg and mix well with your hands. When everything is well combined, break off walnut-size pieces and roll into balls – you should end up with about 28. The mixture will be very soft.

# 2- Heat the oil in a large non-stick frying pan then gently fry the meatballs in two batches until firm and pale golden, turning them every now and then so they brown evenly. Each batch should take 6-8 mins.

# 3- Wipe out the pan to remove excess fat and add the remaining garlic and thyme, then pour in the bouillon and bring to the boil. Turn off the heat, stir in the crème fraîche and remaining dill, then return the meatballs to the pan and turn them in the mixture until coated.

# 4- For the salad, mix the apple, onion, parsley and capers with the lemon, then stir through the beetroot. Serve the salad alongside the meatballs. If you’re cooking for two people, eat half the meatballs and salad now, and chill the rest for another day – it will keep in the fridge for up to three days. Reheat the meatballs in the microwave until piping hot.")
# Recipe.create(name:"Rhubarb & custard French toast", author:"Esther Clark", description:"Top French toast with zesty rhubarb and custard for a deliciously indulgent breakfast or brunch

# ", instructions:"1- Simmer the rhubarb with the vanilla pod, caster sugar and the zest and juice of the orange for 8-10 mins, or until the rhubarb is soft but holds its shape. Set aside.

# 2- Beat the egg with the milk in a shallow dish, add the bread and leave to soak for 1 min, turning once.

# 3- Fry in the butter over a medium heat for 4 mins, then flip and cook for 4 mins more, until golden on both sides. Top with the rhubarb and warm custard.")


# Quantity.create(measurement: 200, ingredient_id: 19, recipe_id: 5)
# Quantity.create(measurement: 1, ingredient_id: 21, recipe_id: 3)
# Quantity.create(measurement: 150, ingredient_id: 20, recipe_id: 4)





















