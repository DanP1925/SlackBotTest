module SlackExpobot
    class Bot < SlackRubyBot::Bot
        class Weather < SlackRubyBot::Bot
            match /Que hora es\?/ do |client, data, match|
                time = Time.new
                hora = time.strftime("%k:%M")  
                client.say(channel: data.channel, text: "La hora es #{hora}")
            end
          end
    end
end