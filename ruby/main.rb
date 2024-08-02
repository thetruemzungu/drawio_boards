require_relative "pagerduty_client.rb"
class FooBar
    class << self
        def main()
            puts PagerdutyClient.http_get("https://api.pagerduty.com/abilities")
        end
    end
end

FooBar.main()