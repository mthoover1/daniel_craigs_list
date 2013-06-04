require 'faker'
require 'securerandom'

Post.delete_all
Category.delete_all

categories = []

10.times do
  categories << Category.create!(name: Faker::Lorem.sentence(word_count = 3, supplemental = false))
end

def price
  dollars = rand(501)
  cents = rand(100)
  dollars + (cents/100.0)
end

def unique_url
  SecureRandom.hex(4)
end


100.times do
  Post.create!(title: Faker::Lorem.sentence(word_count = 4, supplemental = false),
               description: Faker::Lorem.sentence(word_count = 20, supplemental = false),
               price: price,
               email: Faker::Internet.email,
               category_id: categories.sample.id,
               unique_url: unique_url
                )
end



