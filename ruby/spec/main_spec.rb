describe "FooBar" do
    describe "Hello World Validation Wiring Test" do
        it "Gets a string response of 'Hello World'" do
            expect(FooBar.hello_world()).to eq("Hello World")
        end
    end

    describe "main" do 
        it 'Successfully calls to the pd client and returns a response' do
            allow(PagerdutyClient).to receive(:http_get).and_return('{"foo":"bar"}')
            expect(FooBar.main()).to eq(JSON.parse('{"foo":"bar"}'))
        end

        it "creates a grumbot" do
            expect(FooBar.return_grumbot().class).to eq(Robot::Grumbot)
        end

        it "Is infact a correctly made grumbot" do
            grumbot = FooBar.return_grumbot()
            expect(grumbot.firstName).to eq('Grum')
            expect(grumbot.lastName).to eq('Bot')
            expect(grumbot.grumbotIntelligence).to eq('Brilliant')
        end
    end
end