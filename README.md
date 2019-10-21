# Lunch Roulette Backend
---
_An app for indecisive diners_

Find the frontend code at [ghoagland/lunch-roulette-frontend](https://github.com/ghoagland/lunch-roulette-frontend)

Lunch Roulette picks a random restaurant near you for lunch. It tracks your choices so you can better search and choose based on your preferences.

Future goals include:
 - Setting favorites and being able to hide restaurants (i.e. not into shellfish? Stop seeing the clam shack).
 - Searching by favorites, places the user hasn't been, places the user hasn't been to in a while.
 - Add in a weather API to filter results based on conditions - nice weather will mean you walk farther, rainy or snowy weather will pick some place close.



This app is built using React and Material UI for styling on the front end and Ruby on Rails for the backend. Restaurant information is found using the Yelp API. It is a work in progress.


## To Run

This project requires Ruby, Rails, the  `bundler` gem, and Postgres to be installed and configured.

This code also requires a JWT secret and a Yelp API key. Create a file `config/local_env.yml` to set these as environment variables:
```
JWT_SECRET: 'YOUR-JWT-SECRET'
YELP_API_KEY: 'YOUR-YELP-API-KEY'
```

After cloning this repository and moving into the directory,

`$ bundle install`

will install the necessary packages.

Then,

`$ rake db:setup`

will create the database, set up tables based on the schema, and run the seed file.


To run the code, just use

`$ rails s`

to start a server.


Brought to you by Georgina Hoagland.
