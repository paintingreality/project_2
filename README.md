# README

Exotic Supercars Blog Site

This is basically a Blog Site where Supercar lovers can post pictures of their favorite cars.

User stories:
Users can create an account and login.
Users have the ability to post on their page and also can comment on other users post.
Users will have the ability to create, edit, update and destroy their post to maintain their user page.


This site uses the following Gemfiles with Ruby 2.3.1:

Photo uploading:
gem 'dotenv-rails', group: :development, require: 'dotenv/rails-now'
gem 'paperclip'
gem 'aws-sdk'

CSS stylizing:
gem 'bootstrap-sass', '~> 3.3.6'

Database:
gem 'pg', '~> 0.18'(Postgresql 9.6)

Secure Password:
gem 'bcrypt', '~> 3.1.7'

This site is hosted by Heroku at https://dry-peak-80498.herokuapp.com/
This was spec'd out on https://trello.com/b/YY8nWIPo/project-2
