require 'spec_helper'
describe Team do
    describe "should be create with a name" do
        context "when team's name is not null" do
             it "should be created" do
                Team.create()  
                Team.count.should be 0
            end
        end
        context "when team's name is null" do
            it "should not be created" do
                Team.create(name: 'Foo')
                Team.count.should be > 0
            end
        end
    end    
end