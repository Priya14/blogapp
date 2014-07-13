# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'factory_girl_rails'

def seed_posts
 post = Post.first
  unless post.present?
    Post.create(:title => "NO! Don’t Learn Rails before Ruby", :body => "When you decide to learn a language there are always mistakes that you make and realize later on as you are getting more experienced. Knowing what those mistakes are can allow you to save a considerable amount of time.

When I first decided to learn Ruby on Rails. I read a few articles by different bloggers that were saying that you don’t need Ruby to learn Rails. I now totally disagree with them! Take it from someone who initially took that path. I realized a bit later what was wrong with that approach. The first sentence about rails on wikipedia says “Ruby on Rails, often simply Rails, is an open source web application framework which runs on the Ruby programming language”. This simple sentence explains why knowing ruby will become a key factor in mastering rails: The code you type on the Rails framework is Ruby. The only difference is that the system of that framework is arranged in a way that makes it more organized and convenient for you to build applications.

If you take the time to fully understand Ruby before you learn Rails; then learning Rails will become a piece of cake. Whether you build controller, action or else, it will all come down to Ruby. Understanding ruby will also allow you to be more agile with rails and being able to go directly to the source to understand any methods or class. The greatest assets you’ll get once you’ll learn Ruby before Rails is understanding gems or the ruby and rails documentation better.")
    
  end
end

def seed_all
  seed_posts
end

seed_all