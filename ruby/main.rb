require_relative "pagerduty_client.rb"
require_relative "grumbot.rb"
class FooBar
    class << self
        def hello_world()
            "Hello World"
        end
        
        def main()
                jsonResponse = json_to_map(PagerdutyClient.http_get("https://api.pagerduty.com/log_entries"))
            # /abilities
            # abilites = jsonResponse["abilities"]
            # abilities.each do |ability|
            #     puts ability
            # end

            # /log_entries
            # logs = jsonResponse["log_entries"]
            # logs.each do | log |
            #     puts log["id"]
            #     puts log["summary"]
            #     puts log["created_at"]
            #     puts
            # end
            rescue StandardError => e
                return e.to_s()
            return jsonResponse
        end

        def return_grumbot()
            Robot::Grumbot.new("Grum", "Bot", "Brilliant")
        end

        def json_to_map(json_string)
            JSON.parse(json_string)
        end

        def get_input_line()
            STDIN.gets().chomp()
        end
    end
end