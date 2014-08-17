# Deploying to Heroku
1. Pull the repo and set up with a heroku remote as described in Heroku's ['Getting Started with Rails 4'](https://devcenter.heroku.com/articles/getting-started-with-rails4) guide.
2. Sign up for a [Clockwork SMS](http://www.clockworksms.com/) account. 
3. Set a [receiving url and sms keyword](https://app3.clockworksms.com/Keywords) in clockwork. The URL will be the site root with the path '/sms'.
4. Set your clockwork api key with 'heroku config:get API_KEY_HERE'

# Note on tenant telephone numbers
These numbers should be in the format of country code followed by number without leading 0, for example: 447555555
