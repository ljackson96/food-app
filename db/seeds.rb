# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'unirest'
require 'pry'

@resp = Unirest.get "https://recipe-puppy.p.rapidapi.com/?p=5&q=pie",
  headers:{
    "X-RapidAPI-Host" => "recipe-puppy.p.rapidapi.com",
    "X-RapidAPI-Key" => "ca036601damsh5819a2bc9ae9cffp14861fjsncd852ab3030f"
  }

  recipes = @resp.body['results']

  recipes.each do |recipe|
      Recipe.create!(
          title: recipe['title'],
          thumbnail: recipe["thumbnail"],
          ingredients: recipe['ingredients'],
          href: recipe['href']
      )
  end

  @resp = Unirest.get "https://recipe-puppy.p.rapidapi.com/?p=5&q=cake",
  headers:{
    "X-RapidAPI-Host" => "recipe-puppy.p.rapidapi.com",
    "X-RapidAPI-Key" => "ca036601damsh5819a2bc9ae9cffp14861fjsncd852ab3030f"
  }

  cakes = @resp.body['results']

  cakes.each do |cake|
      Recipe.create!(
          title: cake['title'],
          thumbnail: cake["thumbnail"],
          ingredients: cake['ingredients'],
          href: cake['href']
      )
  end

  @resp = Unirest.get "https://recipe-puppy.p.rapidapi.com/?p=5&q=cookie",
  headers:{
    "X-RapidAPI-Host" => "recipe-puppy.p.rapidapi.com",
    "X-RapidAPI-Key" => "ca036601damsh5819a2bc9ae9cffp14861fjsncd852ab3030f"
  }

  cookies = @resp.body['results']

  cookies.each do |cookie|
      Recipe.create!(
          title: cookie['title'],
          thumbnail: cookie["thumbnail"],
          ingredients: cookie['ingredients'],
          href: cookie['href']
      )
  end
  
  




