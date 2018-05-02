Product.destroy_all

12.times do |index|
  @product = Product.create!(name: Faker::Coffee.blend_name,
                        price: Faker::Number.decimal(2),
                        description: Faker::Coffee.notes
                        )

end

p "Created #{Product.count} coffee"
