if Rails.env.development?
  puts "Destroying tags..."
  Tag.destroy_all
  puts "Destroying plants..."
  Plant.destroy_all
	puts "Destroying gardens..."
	Garden.destroy_all
end

puts "Creating gardens..."
g = Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

g2 = Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

# SEED OUT PLANTS
puts "Creating plants..."
Plant.create!(
  garden: g,
  name: "Nettle",
  image_url: "https://cdn.britannica.com/21/196021-050-45CAA3DB/Stinging-nettle.jpg"
)

Plant.create!(\
  garden: g2,
  name: "Chrysanthemum",
  image_url: "https://upload.wikimedia.org/wikipedia/commons/c/c5/Chrysanthemum_November_2007_Osaka_Japan.jpg"
)

Plant.create!(
  garden: g,
  name: "Rhododendron",
  image_url: "https://www.almanac.com/sites/default/files/image_nodes/rhododendron-pink-bush-edit.jpg"
)

puts "Creating tags..."
names = %w(Fruit\ tree Cactus Greasy\ plant Flower Ferns Conifers)

# SEED OUR TAGS
names.each do |name|
  Tag.create!(name: name)
end


puts "Finished seeding!"
