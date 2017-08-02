# eHM Track

ehm_track is a health and management tracker for tracking health issues - including medication and symptoms.

## Thoughts

This is my third official project for Flatiron School. I again wanted to build something I could use or someone in my family could use to make managing health issues easier. I can honestly say I am very excited at the all of the possibilities I am finding in Rails! The most exciting thing so far was my research into using Devise or "Rolling My Own".

My parents are older and my grandmother isn't well, so having something that will allow me to track her symptoms and medication will be very helpful. Ideally, the health issues are unique, as are the dosage, frequency, etc of the medication. You are able to select a symptom to assign to the issue, and also add notes. As I have a few things going on of my own and have a few friends that suffer from allergies or diabetes, I feel this could really turn into something useful.

I also have a few ideas for features (medication export, etc) that I plan to implement in the near future. I sincerely hope I am building something very useful for family and friends.

## Installation, Usage & Development

Clone the repository to your computer and run the following commands in your terminal:

1. Run `bundle install` to install the required gems and dependencies
1. `rake db:create` to create the database, then
1. `rake db:migrate` to run the migrations. Run `rspec` if you'd like to run the test suite.

To see this app in action locally, run `rails server`, then navigate to `localhost:3000` in your browser. Make your changes in `ehm_track/app` and refresh the page to see them in action.

## Contributing

Bug reports and pull requests are welcome on GitHub at [github.com/tracypholmes/ehm_track](https://github.com/tracypholmes/ehm_track). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

This software is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).