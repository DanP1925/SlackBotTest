module SlackExpobot
    module Commands
        class Hello < SlackRubyBot::Commands::Base
            command 'hello' do |client, data, _match|
                web_api = Slack::Web::Client.new
                block_question =  [
                    {
                        "type": "section",
                        "text": {
                            "type": "mrkdwn",
                            "text": "Hola, soy un bot con estilo"
                        }
                    },
                    {
                        "type": "divider"
                    }
                ]

                web_api.chat_postMessage(channel: data.channel,  blocks: block_question.to_json)
            end
        end
    end
end