# MapmyindiaRuby

This is a ruby client/gem for the MapmyIndia APIs - http://www.mapmyindia.com/api/

MapymyIndia adds location intelligence to your applications and they are India's best maps and LBS service providers.

They have Javascript and REST APIs. This gem is a client for their REST APIs. You will need to sign up to their APIs and get an access key to the APIs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mapmyindia_ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mapmyindia_ruby

## Usage

Using the API is pretty simple. Just create a MapmyindiaRuby::Base object and pass the license key while creating the client object. You can use the API methods using the client object as shown below.



```ruby
client = MapmyindiaRuby::Base.new(<LICENSE KEY>)

resp = client.geocoding("mapmyindia, delhi") #the query string as parameter

resp = client.reverse_geocoding(28.66289505,77.22479939) #the lattitude and longitude as parameters

```

Both the APIs above return an array of GeoAddr objects. The properties of this type can be found here : http://www.mapmyindia.com/api/v3/docs/geocoding-api

```ruby
resp = client.distance([PARAMETERS]) #parameters as mention in http://www.mapmyindia.com/api/v3/docs/distance-api
```

The response for this api contains a status, duration and length. For more info refer : http://www.mapmyindia.com/api/v3/docs/distance-api

```ruby
resp = client.map_tile_image([PARAMETERS],[LOCATION]) 
#parameters as mention in http://www.mapmyindia.com/api/v3/docs/map-tile-image-api
#Location is the paramater the specifies where to store the PNG image. It needs to have write access.

```
The response for this API is a PNG image and the image is stored in the path provided as the second parameter.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/mapmyindia_ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## TO-DOs

1. The route API is yet to implemented. The response object contains multiple objects and has to be converted into a ruby friendly format.

2. Tests have not been written yet.