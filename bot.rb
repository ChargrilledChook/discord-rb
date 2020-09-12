require 'discordrb'
require 'yaml'

CONFIG = YAML.load_file('config.yaml')
bot = Discordrb::Bot.new token: CONFIG['token']

brag_count = 5

bot.message(with_text: 'brag') do |event|
  event.respond "Reminds me of the time I smashed Khade and Mincie #{brag_count} - 0"
  brag_count += 1
end

bot.message(with_text: 'craft beer') do |event|
  event.respond "yeah that's me fave cobba"
end

bot.message(with_text: 'oi') do |event|
  event.respond "What dog"
  event.respond "<:UWot:311362042386972672>"
end

bot.message(with_text: 'cunt') do |event|
  event.respond 'fucken dog cunt ay'
end

bot.message(with_text: 'rekt') do |event|
  event.respond "rekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\nrekt\n"
end

bot.message(with_text: 'goodboy') do |event|
  event.respond "<:KeelanGoodboy:311362006638919680>"
end

bot.message(with_text: 'goodboys') do |event|
  5.times { event.respond "<:KeelanGoodboy:311362006638919680>" }
end

bot.message(with_text: 'nah') do |event|
  event.respond "nah nah nah nah nah nah nah nah nah"
end

bot.message(with_text: 'vb') do |event|
  event.respond "https://media.discordapp.net/attachments/131257164235800576/644429935733374979/happy_morgsmk3.gif"
end

bot.message(with_text: 'suck') do |event|
  event.respond "SUCK EM DRY"
end

bot.message(with_text: 'milk') do |event|
  event.respond "MILK EM DRY"
end

bot.message(with_text: msg) do |event|
  event.respond responses[msg]
end

bot.run
