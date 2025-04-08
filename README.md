# DemoEngine
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem "demo_engine"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install demo_engine
```

## To use the engine and migrate
This will copy all the migrations in the engine to the app where is engine is mounted
```bash
rails demo_engine:install:migrations
```
Please run db migrate afterward.

## To copy all views from the engine to host application
```bash
rails generate demo_engine:views
```


## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
