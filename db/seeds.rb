Product.destroy_all
Review.destroy_all


seafood_list = [
  ["Abalone", "", "", "" ],
  ["Anchovies", "", "", "" ],
  ["Arctic Char", "", "", "" ],
  ["Basa", "", "", "" ],
  ["Seabass", "", "", "" ],
  ["Bream", "", "", "" ],
  ["Manila Clams", "", "", "" ],
  ["Atlantic Cod", "", "", "" ],
  ["Crab", "", "", "" ],
  ["Crawfish", "", "", "" ],
  ["Cuttlefish", "", "", "" ],
  ["Dab", "", "", "" ],
  ["Flounder", "", "", "" ],
  ["Haddock", "", "", "" ],
  ["Hake", "", "", "" ],
  ["Halibut", "", "", "" ],
  ["Herring", "", "", "" ],
  ["Limpet", "", "", "" ],
  ["Lobster", "", "", "" ],
  ["Mackerel", "", "", "" ],
  ["Salmon", "", "", "" ],
  ["Tilapia", "", "", "" ]
]



seafood_list.each do | product_name, description, cost, country|
  country = Faker::Address.country
  description = Faker::Lorem.sentence
  cost = Faker::Number.decimal(2)
  Product.create( name: product_name, description: description, cost: cost, country: country,
  :reviews_attributes => [
    {
      author: Faker::Zelda.character,
      content: Faker::ChuckNorris.fact,
      rating: rand(1..5)
    },
    {
      author: Faker::Zelda.character,
      content: Faker::ChuckNorris.fact,
      rating: rand(1..5)
    },
    {
      author: Faker::Zelda.character,
      content: Faker::ChuckNorris.fact,
      rating: rand(1..5)
    }
    ])
end
p "Created seeds"
