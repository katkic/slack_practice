require 'slack-notify'
require 'dotenv'

Dotenv.load
client = SlackNotify::Client.new(webhook_url: ENV['SLACK_EWBHOOK_URL'])

client.notify("generalへHello There!")
client.notify("dive-into-codeへrubyプログラムからメッセージを送信", "#dive-into-code")
client.notify("generalとdive-into-codeにメッセージを送ります", ["#general", "#dive-into-code"])
