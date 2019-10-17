# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin_role = Role.where(name: 'admin').first_or_create
if Rails.env.development?
  a1 = Account.where(email: 'user1@pi.com').first_or_create(password: 'password', password_confirmation: 'password')
  a2 = Account.where(email: 'user2@pi.com').first_or_create(password: 'password', password_confirmation: 'password')
  a1.roles << admin_role
end
