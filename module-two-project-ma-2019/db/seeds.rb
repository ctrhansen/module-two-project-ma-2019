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


20.times do
    Company.create({
        name: Faker::Company.name,
        address: Faker::Address.full_address,
        logo: "http://lorempixel.com/400/200",
        website: Faker::Internet.url('example.com'),
        bio: Faker::Hipster.paragraph
    })  
end
    
20.times do
    Employee.create({
        name: Faker::Name.name,
        email: Faker::Internet.email,
        title: Faker::Hipster.word,
        company: Company.all.sample,
        photo: "http://lorempixel.com/400/200"
    })
end 

20.times do
    Client.create({
        name: Faker::Hipster.word,
        company: Company.all.sample,
        logo: "http://lorempixel.com/400/200"
    })
end

20.times do
    Ad.create({
        name: Faker::Hipster.word,
        client: Client.all.sample,
        ad_type: Faker::Hipster.word,
        picture: "http://lorempixel.com/400/200",
        location: Faker::Hipster.word,
        target_age: Faker::Number.number(2),
        copy: Faker::Hipster.paragraph,
        duration: Faker::Date.between(9.days.ago, Date.today).to_s,
        cost: Faker::Number.decimal(2)
    })
end

10.times do
    Campaign.create({
        name: Faker::Hipster.word,
        ad: Ad.all.sample,
        employee: Employee.all.sample,
        client: Faker::Hipster.word
    })
end

5.times do
    Report.create({
        campaign: Campaign.all.sample,
        name: Faker::Hipster.word,
        report_type: Faker::Hipster.word,
        client: Faker::Hipster.word,
        duration: Faker::Date,
        roi: Faker::Number.decimal(2),
        impressions: Faker::Number.number(7),
        views: Faker::Number.number(5),
        clicks: Faker::Number.number(5),
        reach: Faker::Number.number(5),
        conversions: Faker::Number.decimal(3)
    })
end