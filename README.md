# [Welcome to Lendy!](https://eager-poitras-0eb550.netlify.app/)

![Lendy logo on a blue gradient circle](/public/Logo.png)


## Table of contents
* [General info](#general-info)
* [Intro Video](#intro-video)
* [Technologies](#technologies)
* [Setup](#setup)
* [Features](#features)
* [Status](#status)
* [Inspiration](#inspiration)
* [Contact](#contact)
* [License](#license)

## General info
We all want to share the things we have with the people we care about, but sometimes it can be difficult to keep track of all our resources.  That's where Lendy comes in.  

Lendy is a lightweight web application that makes it easy for anyone to create a personal inventory of sharable items, keep track of who borrowed them, and know when they are expected back.  With Lendy, your can share your items with confidence, knowing that you won't lose track of your treasures. 


This is the repo for the Lendy API backend only.

For the Lendy frontend interface, see [lendy-frontend](https://github.com/philip-haines/lendy-frontend) by Philip Haines.
  
Lendy was created by Philip Haines and Tara Harwood as a project for Flatiron School's Software Enginering Bootcamp in Denver, CO 


## Intro Video
*coming soon!*

## Technologies
**Backend**
* Ruby
* Rails
* Postgres
* **Deployed with Heroku**

**Frontend**
* HTML 5
* CSS
* Javascript
* **Deployed with Netlify**



## Setup
To run this project, install it locally by cloning the GitHub repository and typing:
```ruby
ruby config/environment.rb
```

## Code Examples
```ruby
def self.get_taco_details(taco)
    returned_taco = Taco.find_by(name: taco)
    puts "Name: " + returned_taco.name + " Taco"
    puts "Protein: " + returned_taco.protein
    puts "Heat Level: " + returned_taco.heat_level.to_s
    puts "Shell Type: " + returned_taco.shell_type
end
```

```ruby
def self.update_user_name(user_name)
    old_name = User.find_by(name: user_name)
    puts "What is your new name friend?"
    user_input = gets.chomp
    old_name.update(name: user_input)
    user_input
end
```


## Features
* Browse tacos by protein type
* Return a random taco from the database
* See taco details
* Save tacos to favorites list
* Remove tacos from favorites list
* Take the Taco Compatibility Quiz


To-do list:
* Refactor “code smell”
* Add API functionality to return a recipe for chosen taco
* Discover local restaurants serving tacos
* Integrate matching photos to tacos

## Status
Project is: finished with option to expand functionality and DRY out code.

## Inspiration
The inspiration for TacoLandia came from a restaurant API that did not return the information
we were looking for. Using our own love of tacos, we set out to build a fun, interactive, and 
clean UX/UI that would bring other users joy!

## Contact
Created by [Catherine O'Hara](https://www.linkedin.com/in/catherine-o/) and [Taylor Stein](https://www.linkedin.com/in/taylor-stein)

Feel free to contact us!!! 🌮

## License
[Click to view](https://github.com/stein0209/TacoLandia/blob/master/License.txt)



