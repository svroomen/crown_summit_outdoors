# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
if Rails.env == 'development'
  AdminUser.where(email: 'admin@example.com').first_or_create(
    password: 'password',
    password_confirmation: 'password'
  )
end

# category data
Seeds::Categories.seed_categories

# status data
Seeds::Statuses.seed_statuses

# product data
Seeds::Products::ClothingProducts.seed_products
Seeds::Products::FootwearProducts.seed_products
Seeds::Products::AccessoryProducts.seed_products

# country data
Seeds::Countries.seed_countries

# province data
Seeds::Provinces.seed_provinces
