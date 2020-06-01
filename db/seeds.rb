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
Market.destroy_all
User.destroy_all
Review.destroy_all

#image seed

file1 = URI.open('https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2016/06/sicilian-style-artichoke-hearts-with-burrata.jpg?itok=1LF46CyS')
file2 = URI.open('https://i.guim.co.uk/img/media/61939a658cec630bd704d57c70f00b108abc4479/151_12_1672_1286/master/1672.jpg?width=1920&quality=85&auto=format&fit=max&s=34532389f604301513b6142f62c4b8dd')
file3 = URI.open('https://i.guim.co.uk/img/media/2dcacb8daca810000e60fedac6a4dfd8d9fe3b60/0_3_2667_2666/master/2667.jpg?width=620&quality=45&auto=format&fit=max&dpr=2&s=53d7d7e19ae89a4eb53c3eef529291e1')
file4 = URI.open('https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe_images/recipe-image-legacy-id--1048_11.jpg?itok=-ZzIDbB6')
file5 = URI.open('https://i.guim.co.uk/img/media/55e61a76e102d82860e7d787e49475bc315ad00a/243_460_8409_5045/master/8409.jpg?width=1300&quality=45&auto=format&fit=max&dpr=2&s=ca0c411e761e1e733ffbd49d981ef550')
file6 = URI.open('https://i.guim.co.uk/img/media/43a71b25c31eebbc2cae3bfe5aa037a84aaa0214/0_3304_4912_2948/master/4912.jpg?width=620&quality=45&auto=format&fit=max&dpr=2&s=003b249a9a0b9ae994827b43f2492b05')
file7 = URI.open('https://i.guim.co.uk/img/media/4a5a61a3d7247d13301b7b0a8a2dd883be1ba54c/0_2138_4912_2944/master/4912.jpg?width=620&quality=45&auto=format&fit=max&dpr=2&s=6762a630fa66755de5b4679aefd41d7f')
file8 = URI.open('https://i2.wp.com/c4.staticflickr.com/9/8399/29396469571_996085ba30_z.jpg?resize=640%2C427&ssl=1')
file9 = URI.open('https://www.bbcgoodfood.com/sites/default/files/styles/recipe/public/recipe/recipe-image/2019/12/rhubarb-custard-french-toast.jpg?itok=q5DbbAk_')

#ingredient Seed

anchovies = Ingredient.create(name: "anchovies")
artichoke = Ingredient.create(name: "artichoke", season: [6, 7, 8, 9, 10, 11])
asparagus = Ingredient.create(name: "asparagus", season: [4, 5, 6])
aubergines = Ingredient.create(name: "aubergine", season: [5, 6, 7, 8, 9, 10])
beetroot = Ingredient.create(name: "beetroot", season: [6, 7, 8, 9, 10, 11, 12, 1, 2, 3])
black_olives = Ingredient.create(name: "black olives")
broad_beans = Ingredient.create(name: "broad beans", season: [5, 6, 7, 8, 9])
brown_lentils = Ingredient.create(name: "small brown lentils")
burrata = Ingredient.create(name: "burrata")
butter = Ingredient.create(name: "butter")
carrots = Ingredient.create(name: "carrots", season: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
caster_sugar = Ingredient.create(name: "caster sugar")
coconut_milk = Ingredient.create(name: "coconut milk")
coconut_oil = Ingredient.create(name: "coconut oil")
coppa = Ingredient.create(name: "coppa")
coriander_seeds = Ingredient.create(name: "coriander seeds")
cracked_wheat = Ingredient.create(name: "cracked wheat")
cumin_seeds = Ingredient.create(name: "cumin seeds")
custard = Ingredient.create(name: "custard")
dried_chillies = Ingredient.create(name: "dried red chillies")
egg = Ingredient.create(name: "egg")
eggs = Ingredient.create(name: "eggs")
feta = Ingredient.create(name: "feta")
flatbread = Ingredient.create(name: "flatbread")
garlic = Ingredient.create(name: "garlic")
greek_yoghurt = Ingredient.create(name: "greek yoghurt")
ground_coriander = Ingredient.create(name: "ground coriander")
ginger = Ingredient.create(name: "ginger")
harissa_paste = Ingredient.create(name: "harrisa paste")
hazelnuts = Ingredient.create(name: "hazelnuts")
lemongrass = Ingredient.create(name: "lemongrass")
lemon_juice = Ingredient.create(name: "lemon juice")
lime_leaves = Ingredient.create(name: "makrut lime leave")
limes = Ingredient.create(name: "limes")
micro_herbs = Ingredient.create(name: "micro herbs")
milk = Ingredient.create(name: "milk")
mint = Ingredient.create(name: "springs of mint")
nigella_seeds = Ingredient.create(name: "nigella seeds")
oil = Ingredient.create(name: "extra-virgin olive oil")
orange = Ingredient.create(name: "orange", season: [1, 2, 3])
parsley = Ingredient.create(name: "parsley")
pepper = Ingredient.create(name: "black pepper")
pesto = Ingredient.create(name: "pesto")
pistachios = Ingredient.create(name: "pistachios")
rhubarb = Ingredient.create(name:"rhubarb", season: [1, 2, 3, 4, 5, 6, 7])
red_chilli = Ingredient.create(name: "red chillies", season: [1, 2, 3, 12])
red_wine_vinegar = Ingredient.create(name: "red wine vinager")
salt = Ingredient.create(name: "sea salt")
sesame = Ingredient.create(name: "sesame seeds")
shallots = Ingredient.create(name: "shallots")
spring_onions = Ingredient.create(name: "spring onions")
sprouted_mung_beans = Ingredient.create(name: "sprouted mung beans")
sugar = Ingredient.create(name: "caster sugar")
sumac = Ingredient.create(name: "sumac")
tamarind_paste = Ingredient.create(name: "tamarind paste")
thai_basil = Ingredient.create(name: "thai basil")
tomato = Ingredient.create(name: "tomato", season: [6, 7, 8, 9])
vanilla_pod = Ingredient.create(name: "vanilla pod")
vegetable_stock = Ingredient.create(name: "vegetable stock")
vine_tomatoes = Ingredient.create(name: "vine tomatoes", season: [6, 7, 8, 9, 10])
white_bread = Ingredient.create(name: "white bread")
white_wine_vinegar = Ingredient.create(name: "white wine vinagar")
wholegrain_mustard = Ingredient.create(name: "wholegrain mustard")
wine = Ingredient.create(name: "white wine")

#market seed

borough_market = Market.create(name: "Borough Market", address: "8 Southwark Street, London, SE1 1TL")
victoria_park_market = Market.create(name: "Victoria Park Market", address: "56-57 Gore Rd, London E9 7HN")
greenwhich_market = Market.create(name: "Greenwich Market", address: "5B Greenwich Market, Greenwich Peninsula, London SE10 9HZ")
southbank_centre_food_market = Market.create(name: "Southbank Centre Food Market", address: "Southbank Centre, Belvedere Rd, Bishop's, London SE1 8XX")
broadway_market = Market.create(name: "Broadway Market", address: "Broadway Market, Hackney, London E8 4PH")
brixton_village_market = Market.create(name: "Brixton Village Market", address: "74 Brixton Village, Coldharbour Ln, Brixton, London SW9 8PS")
portobello_road_market = Market.create(name: "Portobello Road Market", address: "306 Portobello Rd, London W10 5TA")
old_spitalfields_market = Market.create(name: "Old Spitalfields Market", address: "16 Commercial St, Spitalfields, London E1 6EW")
camden_market = Market.create(name: "Camden Market", address: "200B chalk farm road, Camden Lock Pl, Camden Town, London NW1 8AF")


#recipe & quantity seed

artichoke_recipe = Recipe.new(name:"Artichoke and burrata salad", author:"Tom Hunt", servings: 2, description: "Next time you make a recipe that calls for just the artichoke hearts, don’t discard the leaves – they can be frozen for later use or turned into a distinctive stock. Or, if you’d like to upcycle them into something a little more elaborate, this dish does just that. Burrata and artichokes are a match made in heaven, and the pesto seals the deal.", instructions: "Heat a thick-based frying pan on a medium heat with a good glug of extra-virgin olive oil. Add the artichoke leaves and the whole garlic clove, and season with sea salt. Fry gently for a few minutes, then add a slosh of white wine and cover.

Leave to steam for five minutes, or until the leaves become tender; add more wine, if need be. Remove the lid and cook to evaporate any remaining wine. Douse the artichoke leaves with a little more olive oil and fry gently until caramelised.

Serve as they are as a side vegetable, or turn into a centrepiece by serving on a platter with pieces of torn burrata, mint and crisp bread, and drizzled with pesto. Eat the leaves just as you would a boiled globe artichoke, pulling the flesh off with your teeth." )

Quantity.create(measurement: 1, ingredient: artichoke, recipe: artichoke_recipe)
Quantity.create(measurement: 1, ingredient: oil, recipe: artichoke_recipe)
Quantity.create(measurement: 1, ingredient: garlic, recipe: artichoke_recipe, unit: "clove")
Quantity.create(measurement: 1, ingredient: salt, recipe: artichoke_recipe, unit: "pinch of")
Quantity.create(measurement: 1, ingredient: pepper, recipe: artichoke_recipe, unit: "pinch of")
Quantity.create(measurement: 1, ingredient: flatbread, recipe: artichoke_recipe)
Quantity.create(measurement: 1, ingredient: pesto, recipe: artichoke_recipe)
Quantity.create(measurement: 2, ingredient: mint, recipe: artichoke_recipe, unit: "sprigs")

artichoke_recipe.photo.attach(io: file1, filename: 'artichoke_image.jpg', content_type: 'image/jpg')
artichoke_recipe.save


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

asparagus_recipe2 = Recipe.new(name: "Grilled asparagus, lentils and wheat", author: "Nigel Slater", servings: 4, description: "Most of the cracked wheat sold here, also known as bulgur or pourgouri, has already been broken, cooked and dried and doesn’t need the 20 minutes of boiling that some packets suggest. Instead, cover the grains by a centimetre or so of just-boiled water from the kettle, cover and leave for 15 minutes. Job done. Tenderly running a fork through the swollen grains will give a lighter, more open texture. I use young sprouting herbs in this salad, mostly coriander and beetroot, but any “micro-salad” – such as radish sprouts – would add a similar freshness.", instructions: "Boil the lentils in deep, unsalted water for 20 minutes until tender, but still with a nutty bite to them, then drain and set aside.

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

tomato_recipe = Recipe.new(cooking_time: 180, name: "Slow roasted tomatoes", author: "Deb Perelman", servings: 4, description: "I love tomatoes so much that I even occasionally take part in the blasphemy that is “sun-dried tomatoes,” most of which are about as dried out in the sun as I am this week–unfortunately not the case for either of us. But lets talk about what sun-dried tomatoes aspired to be before their dreams were co-opted by food packagers and evil-minded chemists: tomatoes roasted slowly at a low temperature.", instructions: "Preheat oven to 225°F. Halve each cherry or grape tomato crosswise, or Roma tomato lengthwise and arrange on a parchment-lined baking sheet along with the cloves of garlic. Drizzle with olive oil, just enough to make the tomatoes glisten. Sprinkle herbs on, if you are using them, and salt and pepper, though go easily on these because the finished product will be so flavorful you’ll need very little to help it along.
Bake the tomatoes in the oven for about 3 hours. You want the tomatoes to be shriveled and dry, but with a little juice left inside–this could take more or less time depending on the size of your tomatoes.

Either use them right away or let them cool, cover them with some extra olive oil and keep them in the fridge for the best summer condiment, ever. And for snacking.")

tomato_recipe.photo.attach(io: file8, filename: 'tomato_image.jpg', content_type: 'image/jpg')
tomato_recipe.save

Quantity.create(measurement: 500, ingredient_id: tomato.id, recipe_id: tomato_recipe.id, unit: "g")
Quantity.create(measurement: 1, ingredient_id: oil.id, recipe_id: tomato_recipe.id, unit: "drizzle")
Quantity.create(measurement: 4, ingredient_id: garlic.id, recipe_id: tomato_recipe.id, unit: "cloves")

rhubarb_recipe = Recipe.new(cooking_time: 30, name: "Rhubarb & custard French toast", author: "Esther Clark", servings: 2, description: "Top French toast with zesty rhubarb and custard for a deliciously indulgent breakfast or brunch", instructions: "Simmer the rhubarb with the vanilla pod, caster sugar and the zest and juice of the orange for 8-10 mins, or until the rhubarb is soft but holds its shape. Set aside.

Beat the egg with the milk in a shallow dish, add the bread and leave to soak for 1 min, turning once.

Fry in the butter over a medium heat for 4 mins, then flip and cook for 4 mins more, until golden on both sides. Top with the rhubarb and warm custard.")

rhubarb_recipe.photo.attach(io: file9, filename: 'rhubarb_image.jpg', content_type: 'image/jpg')
rhubarb_recipe.save

Quantity.create(measurement: 200, ingredient_id: rhubarb.id, recipe_id: rhubarb_recipe.id, unit: "g")
Quantity.create(measurement: 1, ingredient_id: vanilla_pod.id, recipe_id: rhubarb_recipe.id, unit: "split")
Quantity.create(measurement: 3, ingredient_id: caster_sugar.id, recipe_id: rhubarb_recipe.id, unit: "tbsp")
Quantity.create(measurement: 1, ingredient_id: orange.id, recipe_id: rhubarb_recipe.id, unit: "zest")
Quantity.create(measurement: 1, ingredient_id: egg.id, recipe_id: rhubarb_recipe.id, unit: "large")
Quantity.create(measurement: 300, ingredient_id: milk.id, recipe_id: rhubarb_recipe.id, unit: "ml")
Quantity.create(measurement: 4, ingredient_id: white_bread.id, recipe_id: rhubarb_recipe.id, unit: "thick slices")
Quantity.create(measurement: 2, ingredient_id: butter.id, recipe_id: rhubarb_recipe.id, unit: "tbsp")
Quantity.create(measurement: 100, ingredient_id: custard.id, recipe_id: rhubarb_recipe.id, unit: "ml warm")


# users seed
emma = User.create(email: "emma@gmail.com", password: "123456", username: "emma_b", address: "186 Deptford High Street, London")
fred = User.create(email: "fred@gmail.com", password: "123456", username: "fred", address: "9 colebert house, colebert ave, London")
tom = User.create(email: "tom@gmail.com", password: "123456", username: "tom90", address: "23 peckham high street, London")
claire = User.create(email: "claire@gmail.com", password: "123456", username: "claire_brown", address: "186 bethnal green road, London")
anna = User.create(email: "anna@gmail.com", password: "123456", username: "anna_m", address: "117 new cross road, London")
alice = User.create(email: "alice@gmail.com", password: "123456", username: "alice_1", address: "1 stanstead road, e11 2et, London")
femi = User.create(email: "femi@gmail.com", password: "123456", username: "femi_b", address: "186 clapham high street, London")
jonny = User.create(email: "jonny@gmail.com", password: "123456", username: "jonny82", address: "16 mare Street, London")
edina = User.create(email: "edina@gmail.com", password: "123456", username: "edina_w", address: "186 chesham road, London, se20 7rp")

Review.create(rating: 4, content: "Really easy and quck and so tasty!", user: emma, recipe_id: asparagus_recipe2.id)
Review.create(rating: 5, content: "Great way to use up aspargus from the alloment", user: fred, recipe_id: asparagus_recipe2.id)
Review.create(rating: 5, content: "You can never go wrong with Nigel Slater", user: jonny, recipe_id: asparagus_recipe2.id)
Review.create(rating: 4, content: "A winner all round", user: alice, recipe_id: asparagus_recipe2.id)

Review.create(rating: 4, content: "Yummy! The kids loved it", user: edina, recipe_id: rhubarb_recipe.id)
Review.create(rating: 5, content: "Winner", user: jonny, recipe_id: rhubarb_recipe.id)
Review.create(rating: 5, content: "So so good! Definitely recommend", user: anna, recipe_id: rhubarb_recipe.id)

Review.create(rating: 4, content: "Would definitely recommend!", user: emma, recipe_id: tomato_recipe.id)
Review.create(rating: 3, content: "Tastes good but takes along time.", user: fred, recipe_id: tomato_recipe.id)
Review.create(rating: 5, content: "Love this", user: jonny, recipe_id: tomato_recipe.id)

Review.create(rating: 4, content: "Never thought broadbeans could taste so good", user: edina, recipe_id: broadbean_recipe.id)
Review.create(rating: 5, content: "Simple but amazing", user: jonny, recipe_id: broadbean_recipe.id)
Review.create(rating: 5, content: "So so good! Definitely recommend", user: alice, recipe_id: broadbean_recipe.id)

Review.create(rating: 4, content: "Yummy! Even the kids loved it and that's saying something", user: edina, recipe_id: beetroot_recipe.id)
Review.create(rating: 2, content: "Not keen but I don't like beetroot...", user: jonny, recipe_id: beetroot_recipe.id)
Review.create(rating: 5, content: "So so good! Definitely recommend", user: tom, recipe_id: beetroot_recipe.id)

Review.create(rating: 4, content: "Love this curry. Would definitely recommend!", user: jonny, recipe_id: aubergine_recipe2.id)
Review.create(rating: 3, content: "Anna Jones is the best for seasonal recipe_ids.", user: femi, recipe_id: aubergine_recipe2.id)
Review.create(rating: 5, content: "Love this!", user: alice, recipe_id: aubergine_recipe2.id)

Review.create(rating: 4, content: "Fab side dish", user: edina, recipe_id: aubergine_recipe.id)
Review.create(rating: 4, content: "Simple but amazing", user: jonny, recipe_id: aubergine_recipe.id)
Review.create(rating: 5, content: "So so good! Definitely recommend", user: alice, recipe_id: aubergine_recipe.id)

Review.create(rating: 4, content: "Yummy! Even the kids loved it and that's saying something", user: edina, recipe_id: asparagus_recipe.id)
Review.create(rating: 2, content: "Not keen but I don't like asparagus...", user: jonny, recipe_id: asparagus_recipe.id)
Review.create(rating: 5, content: "So so good! Definitely recommend", user: tom, recipe_id: asparagus_recipe.id)

Review.create(rating: 4, content: "Love burrata! Would definitely recommend!", user: jonny, recipe_id: artichoke_recipe.id)
Review.create(rating: 3, content: "Great way to use up artichoke leaves.", user: femi, recipe_id: artichoke_recipe.id)
Review.create(rating: 5, content: "Love this!", user: alice, recipe_id: artichoke_recipe.id)

