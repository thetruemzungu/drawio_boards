require_relative "pagerduty_client.rb"
class FooBar
    class << self
        def main()
            jsonResponse = json_to_map(PagerdutyClient.http_get("https://api.pagerduty.com/log_entries"))
            # /abilities
            # abilites = jsonResponse["abilities"]
            # abilities.each do |ability|
            #     puts ability
            # end

            # /log_entries
            logs = jsonResponse["log_entries"]
            logs.each do | log |
                puts log["id"]
                puts log["summary"]
                puts log["created_at"]
                puts
            end
        end

        def json_to_map(json_string)
            JSON.parse(json_string)
          end

        def get_input_line()
            STDIN.gets().chomp()
        end
    end
end

FooBar.main()