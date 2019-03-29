# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rubygems'
require 'faker'

Company.destroy_all
Employee.destroy_all
Client.destroy_all
Ad.destroy_all
Campaign.destroy_all
Report.destroy_all


# 20.times do
#     Company.create({
#         name: Faker::Company.name,
#         address: Faker::Address.full_address,
#         logo: "http://lorempixel.com/400/200",
#         website: Faker::Internet.url('example.com'),
#         bio: Faker::Hipster.paragraph
#     })  
# end
abc = Company.new(name: "ABC Marketing", address: "123 Light Street, Charleston, WV 24632", logo: "https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwil3LX2l6bhAhUL-6wKHeJ1DdAQjRx6BAgBEAU&url=https%3A%2F%2Fwww.roblox.com%2Flibrary%2F29725606%2Fmotel-6-logo&psig=AOvVaw03jUTue3kV3mby2_3esiSH&ust=1553908903107228",
website: "abcmarket.com", bio: "Best marketing for the hospitality industy.")
    
# 20.times do
#     Employee.create({
#         name: Faker::Name.name,
#         email: Faker::Internet.email,
#         title: Faker::Hipster.word,
#         company: Company.all.sample,
#         photo: "http://lorempixel.com/400/200"
#     })
# end 

employee1 = Employee.new(name: "Lynn Johnson", email: "lynn@abcmarket.com", title: "Owner/CEO", company: abc, photo: "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwjFjuuCoKbhAhUEOK0KHTI8A2gQjRx6BAgBEAU&url=http%3A%2F%2Fwovexhibition.org%2Fphotographers%2Flynn-johnson&psig=AOvVaw0QDhktAYPcdv8lRvmXvXy-&ust=1553911071453249")


# 20.times do
#     Client.create({
#         name: Faker::Hipster.word,
#         company: Company.all.sample,
#         logo: "http://lorempixel.com/400/200"
#     })
# end

coca_cola = Client.new(name: "Coca-Cola", company: abc, logo: "https://www.google.com/url?sa=i&source=images&cd=&ved=&url=https%3A%2F%2Fwww.coca-colaindia.com%2Fstories%2Fthe-logo-story&psig=AOvVaw0NJ98SPMPjZeHWOXH3nx8V&ust=1553910291906880")

# 20.times do
#     Ad.create({
#         name: Faker::Hipster.word,
#         client: Client.all.sample,
#         ad_type: Faker::Hipster.word,
#         picture: "http://lorempixel.com/400/200",
#         location: Faker::Hipster.word,
#         target_age: Faker::Number.number(2),
#         copy: Faker::Hipster.paragraph,
#         start_date: Faker::Date.between(9.days.ago, Date.today).to_s,
#         end_date: Faker::Date,
#         cost: Faker::Number.decimal(2)
#     })
# end

happiness = Ad.new(name: "Find Happiness", client: coca_cola, ad_type: "Billboard", picture: "https://www.google.com/url?sa=i&source=images&cd=&cad=rja&uact=8&ved=2ahUKEwiAy7GCoqbhAhUCKa0KHb54AdEQjRx6BAgBEAU&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DXRbMFJposeg&psig=AOvVaw1pZYAwjz4T2pecLd10OnEm&ust=1553911616484426",
location: "India", target_age: "20 - 35", start_date: "01-01-2014", end_date: "12-31-2014", cost: 60.00 )

# 10.times do
#     Campaign.create({
#         name: Faker::Hipster.word,
#         ad: Ad.all.sample,
#         employee: Employee.all.sample,
#         client: Faker::Hipster.word
#     })
# end

create_happiness = Campaign.new(name: "Coca-Cola Happiness", ad: happiness, employee: employee1, client: coca_cola)

# 5.times do
#     Report.create({
#         campaign: Campaign.all.sample,
#         name: Faker::Hipster.word,
#         report_type: Faker::Hipster.word,
#         client: Faker::Hipster.word,
#         start_date: Faker::Date,
#         end_date: Faker::Date,
#         roi: Faker::Number.decimal(2),
#         impressions: Faker::Number.number(7),
#         views: Faker::Number.number(5),
#         clicks: Faker::Number.number(5),
#         reach: Faker::Number.number(5),
#         conversions: Faker::Number.decimal(3)
#     })
# end

cc_report = Report.new(campaign: create_happiness, name: "Coca-Cola Happiness Report", report_type: "Ad Performance", client: coca_cola, start_date: 01-01-2019, end_date: 12-31-2019, impressions: 12987, views: 9800, clicks: 1500, reach: 600000, conversions: 1250)
