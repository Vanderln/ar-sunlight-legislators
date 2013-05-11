require 'twitter'

require_relative '../../db/config'
require_relative 'politician'

Twitter.configure do |config|
  config.consumer_key = 'K4HvZ9ZARQSSinOA1AnK8w'
  config.consumer_secret = 'R6icikwwqLMa4xzyT27hOM0VDasQPJzjSYVpziBsh4'
  config.oauth_token = '21407644-deNkpNqPbZX62nb9aCIfpQ5gtSeMXWm6YNuqY5UI'
  config.oauth_token_secret = '7QhTuZnmdpq4iiCgRib08JSDj1m7pBrgFQocvObE'
end

politician = Politician.find_all_by_name('Mark Steven Kirk').first
db_twit = politician.twitter_id
live_twit_id = Twitter.user(db_twit).id
Twitter.user_timelime(live_twit_id, :count => 10).each do |tweet|
  p tweet.text
  p tweet.id
  p tweet.created_at
end
