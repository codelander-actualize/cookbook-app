User.create!([
  {name: "Dani", email: "dani@gmail.com", password_digest: "$2a$10$ZzbG1B4CSS2/btEGkso58ufDg/4hb9yOP5FOmD4SVTR7l3uFStCyy"},
  {name: "Jim", email: "jim@gmail.com", password_digest: "$2a$10$EBLEv20NK9xMr2RgdbKUO.L5mxSXctxYJL9Agi4FoHcvMxMuhxDH6"}
])

Recipe.create!([
  {ingredients: "Chicken", directions: "Squeeze the chicken", title: "Raw Eggs", prep_time: 1, image_url: "http://swansonhealthcenter.com/wp-content/uploads/2011/07/Egg.jpg", user_id: 1},
  {ingredients: "Two slices of bread", directions: "Place slices of bread next to each other.", title: "Empty Sandwich", prep_time: 72, image_url: "http://www.phoenixisstrategic.com/wp-content/uploads/2013/05/blog-empty-sandwich.jpg", user_id: 1},
  {ingredients: "Licorice", directions: "Buy licroice from store.", title: "Licorice", prep_time: 120, image_url: "http://cdn2.bigcommerce.com/server6200/aa739/product_images/uploaded_images/red-licorice.png?t=1398725710", user_id: 1},
  {ingredients: "Flour, water, mud.", directions: "Mix flour and water, add mud, bake at 350 degrees for 1 hour.", title: "Mud Pie", prep_time: 84, image_url: "http://cdn-image.myrecipes.com/sites/default/files/styles/300x300/public/image/recipes/sl/05/12/mocha-mud-pie-sl-257949-x.jpg?itok=_ChocANl", user_id: 1},
  {ingredients: "Flour, water, pepperoni, cheese", directions: "Mix flour and water, add cheese and pepperoni, shape as a heart, bake in oven on self-clean mode.", title: "Pizza", prep_time: 455, image_url: "http://twopizzapals.weebly.com/uploads/2/3/6/0/23602608/1338890_orig.jpg", user_id: 1},
  {ingredients: "Corn, cob", directions: "Place corn on the cob, grill for 20 minutes, enjoy!", title: "Corn on the cob", prep_time: 22, image_url: "http://www.scientificamerican.com/sciam/cache/file/59C0122F-509C-4FEE-99A67FC20C50CEF1.jpg", user_id: 1},
  {ingredients: "pineapple, cake", directions: "bake in the oven for 45 mins at 350", title: "Pineapple Upside-Down Cake", prep_time: 80, image_url: "https://cdn.apartmenttherapy.info/image/fetch/f_auto,q_auto,w_600,h_750,c_fit,fl_strip_profile/https://s3.amazonaws.com/pixtruder/original_images/fc93745a48d682c3ae6eb07fc7e7639b84d4e3b2", user_id: 1},
  {ingredients: "Tofu, bbq sauce", directions: "Marinate tofu and bake in over at 400 for 20 mins", title: "BBQ Tofu", prep_time: 60, image_url: "http://ohmyveggies.com/wp-content/uploads/2012/08/baked_barbecue_tofu.jpg", user_id: 1},
  {ingredients: "Coffee beans, water", directions: "Grind beans, filter into water", title: "Coffee", prep_time: 15, image_url: "https://ichef.bbci.co.uk/news/660/cpsprodpb/1AD2/production/_98866860_gettyimages-486020904.jpg", user_id: 2}
])

