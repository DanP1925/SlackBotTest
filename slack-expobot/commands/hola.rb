module SlackExpobot
    module Commands
        class Hola < SlackRubyBot::Commands::Base
            command 'hola' do |client, data, match|
                client.say(channel: data.channel, text:"Hola a todos \n https://tenor.com/view/spiderman-tobey-maguire-dance-dancing-swag-gif-4628441")
            end
        end
    end
end