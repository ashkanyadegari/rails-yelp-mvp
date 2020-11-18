# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  # create_table "restaurants", force: :cascade do |t|
  #   t.string "name"
  #   t.string "address"
  #   t.string "phone_number"
  #   t.string "category"
  #   t.datetime "created_at", precision: 6, null: false
  #   t.datetime "updated_at", precision: 6, null: false
  # end

  if Rails.env.development?

    puts "Deleted all seeds"
    Restaurant.destroy_all
    puts "Starting seeds"
    50.times do
      restaurant = Restaurant.new(name: Faker::Restaurant.name, category: %w(chinese italian japanese french belgian).sample,
      address: Faker::Address.street_address, phone_number: Faker::PhoneNumber.cell_phone)
      restaurant.save
      puts "#{restaurant.name} has been created"
    end
    puts "Seed has ended"
  end
