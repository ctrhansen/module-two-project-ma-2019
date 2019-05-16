# README

PLAYSPACE ADVERTISING
Welcome to PlaySpace Advertising! Marketing automation software that allows you to create and manage your campaigns, ads, employees, clients, and reports. You have the ability to also edit your content and download your reports. Hope you enjoy!

Models and Associations
In our application, we have built a Many to Many domain model to deliver our service. We have seven models:

- Company
- Campaign
- Ad
- Client
- Employee
- Report
- User

Company:
Has many Employees
Has many Clients

Campaign:
Belongs to Employee
Belongs to Ad
Has many Reports

Ad:
Belongs to Client
Has many Campaigns
Has many Employees, through Campaigns

Client:
Belongs to Company
Has many Ads

Employee:
Belongs to Company
Has many Campaigns
Has many Ads, through Campaigns

Report:
Belongs to Campaign

Getting Started
Fork and clone this repository to your local machine. Before you run the application, make sure you install the gems below and run bundle install in your terminal. Then, you can start running the program!

Ruby version 2.3.3
Rails 5.2.2

The following additional gems are required:
JQuery 4.3.1
Bootstrap 4
Faker 1.9.3
Prawn 2.2.2

Contributors Guide

Program Structure
- Basic CRUD methods are in app/controllers
- All Custom methods are located in app/models
- All html/css forms and styling are located in app/views
- Styling across the application is located in views/application.html.erb
- You can find database schema and data in db

DEMO link - https://drive.google.com/file/d/1G30mpYsjShlrdHHKA-dYrVsoE4CGHjqM/view?usp=sharing
