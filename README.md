# Pgapi
A GraphQL api engine for Pluragraph

## Read up on GraphQL
https://www.youtube.com/watch?v=DaznKqh5Ypk
https://www.howtographql.com/basics/2-core-concepts/
https://www.howtographql.com/basics/2-core-concepts/
https://medium.com/@DrawandCode/building-a-graphql-api-in-rails-part-start-coding-8b1de6d75041
https://medium.com/@DrawandCode/building-a-graphql-api-in-rails-part-3-best-practice-8e4a655463d4

## To do next
Rails-gaurd everywhere
https://github.com/exAspArk/graphql-guard

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'pgapi', path: '../api.pluragraph.de'
gem 'graphiql-rails'
```

And then execute:
```bash
$ bundle
```
visit
http://pluragraph.dev/api/graphiql

Mount the engine in routes.rb
```ruby
mount Pgapi::Engine => "/api"
```

Dont forget to restart rails

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
