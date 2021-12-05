# PottedPlantProposals

Return to your geographical region's roots by discovering a variety of plants that actually like to grow in your local biome's climate conditions! These particular species love to grow and be prominently displayed in quirky containers that reflect their loving owner's great personality and impeccible taste. This CLI application gives the user a list of appropriate container garden plants by zipcode... AND allows the user to checkout each plant's unique attributes! 

This app creates new instances of Ruby classes to represent data scraped from "bhg.com"s plant encyclopedia, and then allows the user to access that data through a CLI. The Nokogiri gem scrapes the search engine for the first 10 results (specifically plants that thrive in containers) of a query that requires the user's zipcode. It then makes a new object for each plant, which stores it's own key information... such as the plant's scientific name, light preferences, etc. The user can then view each plant's details by navigating the CLI's simple prompts.

## Installation

To use this app, clone down this repo and run:

    $ cd potted_plant_proposals

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install potted_plant_proposals

To start the CLI app run

    $ ./bin/potted_plant_proposals

Enjoy! 

## Usage

The CLI will guide the user through 4 prompts:

1. Enter your 5 digit zipcode.
2. From the list, choose a plant by entering a number 1 - 10.
3. Enter "yes" or "y" if you want to check out some other plants, or if you're done enter "no" or "n"
4. The last is the opportunity to try another zipcode before the program exits

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lunarang/potted_plant_proposals. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/lunarang/potted_plant_proposals/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PottedPlantProposals project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/lunarang/potted_plant_proposals/blob/master/CODE_OF_CONDUCT.md).
