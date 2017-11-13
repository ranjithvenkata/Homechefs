# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Initial Data for Role
@available = Status.create(status_name: "Available")
@notavailable = Status.create(status_name: "Not Available")

# Initial Data for Role
@admin = Role.create(name: "Admin")
@customer = Role.create(name: "Customer")
@chef = Role.create(name: "Chef")
# Admin
User.create(email: "admin@ait.asia", password: "admin",
            password_confirmation: "admin", role_id: @admin.id)
# Member
User.create(email: "customer@ait.asia", password: "customer",
            password_confirmation: "customer", role_id: @customer.id)

User.create(email: "chef@ait.asia", password: "chef",
            password_confirmation: "chef", role_id: @chef.id)