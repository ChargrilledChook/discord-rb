require 'discordrb'
require 'yaml'

CONFIG = YAML.load_file('config.yaml')
bot = Discordrb::Bot.new token: CONFIG['token']

bot.message(with_text: 'oi') do |event|
  event.respond 'What dog'
end

bot.message(with_text: 'cunt') do |event|
  event.respond 'fucken dog cunt ay'
end

bot.message(with_text: 'rekt') do |event|
  event.respond "rekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\n"
end

bot.message(with_text: 'goodboy') do |event|
  event.respond ":KeelanGoodboy:"
end

bot.message(with_text: 'nah') do |event|
  event.respond "nah nah nah nah nah nah nah nah nah"
end

bot.run
