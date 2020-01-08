require 'slack-notify'
require 'clockwork'
require 'dotenv'
Dotenv.load

module Clockwork
  client = SlackNotify::Client.new(webhook_url: ENV['SLACK_EWBHOOK_URL'])
  message = 'Hello There!'

  handler do |job|
    job.call
  end

  every(
    3.minutes,
    lambda do
      time = Time.now.to_s
      client.notify(message + time)
    end
  )
end
