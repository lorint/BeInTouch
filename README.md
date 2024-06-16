# Be In Touch

Welcome to Be In Touch, an application to support our health by improving our relationships with the people who really matter to us.

This application was built at [BarCamp London's 2024 Hackathon](https://bclhack.wordpress.com/).

### Background

Academic studies consistently show that the quality and number of our friendships have more influence on our chances of dying than other commonly considered risk factors.

Academic Robin Dunbar says: "It is not too much of an exaggeration to say that you can eat as much as you like, dronk as much alcohol as you want, slob about as much as you fancy, fail to do your exercises and live in as polluted an atmosphere as you can find, and you will barely notice the difference. But having no friends or not being involved in community activities will dramatically affect how long you live." *Source: Friends: Understanding the Power of our Most Important Relationships by Robin Dunbar*

This application sets out to strengthen our most important relationships through: 
- reminding us to be in touch with our family and friends
- helping us remember significant occasions, both positive and negative, in the lives of our family and friends
- helping us remember important information about others through note taking so that each interaction can be on a deeper level than surface information

### Get Started with developing locally

This project uses Ruby on Rails.

#### Ruby version
3.1.3

#### System dependencies:
This how-to is written for MacOS, and works on intel machines. If you're successfully work on this using a different technology then please update this how-to with how you did it. 

#### Database creation: 

You'll need a postgres database in order to work locally with this repo, if you don't have postgres yet, here's a way to install it
- `brew install postgresql`
- `brew services start postgresql`

Once your postgres database is up and running you should be able to do the following commands to set up the database for this application.
- `bin/rails db:create`
- `bin/rails db:create`
- `bin/rails db:seed`

#### Running locally

Install dependencies from the Gemfile:
- `bundle`

Start the rails server:
- `bin/rails s -p 4000`

Visit the site on your machine:
- http://127.0.0.1:4000

