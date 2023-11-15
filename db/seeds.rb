NB_SEEDS = 50

puts 'Cleaning database...'
Restaurant.destroy_all

puts "Creating #{NB_SEEDS} restaurants..."
NB_SEEDS.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: Restaurant::ALLOWED_CATEGORIES.sample
  )
end

puts 'Finished!'
