Product.destroy_all

25.times do |index|
  @product = Product.create!(name: Faker::Coffee.blend_name,
                        price: Faker::Number.decimal(2)
                        )

 #  10.times do
 #    @order = Order.create!(status: Faker::Friends.character,
 #                  total_price: Faker::Number.decimal(2),
 #                  account_id: Faker::Number(1))
 #    end
 #
 #  1.times do
 #   OrderItem.create!(quantity: Faker::Number(1-5),
 #                 order_id: @order.id,
 #                 product_id: @product.id)
 # end
end

p "Created #{Product.count} coffee"
