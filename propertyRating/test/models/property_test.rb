require 'test_helper'

class PropertyTest < ActiveSupport::TestCase

test "should find a match on address" do
    test_property = Property.create(address: "117 west lincoln",
                                    apt: "1",
                                    city: "Augusta",
                                    state: "Wisconsin",
                                    zip: "54722",
                                    rooms: "2",
                                    rent: "500",
                                    utilities: "200",
                                    petsAllowed: "Yes")
    assert_equal test_property, Property.searchAddress("117").first
end

test "should not find a match on address" do
    test_property = Property.create(address: "117 west lincoln",
                                    apt: "1",
                                    city: "Augusta",
                                    state: "Wisconsin",
                                    zip: "54722",
                                    rooms: "2",
                                    rent: "500",
                                    utilities: "200",
                                    petsAllowed: "Yes")
    assert_not_equal test_property, Property.searchAddress("118").first
end

test "should find a match on city" do
    test_property = Property.create(address: "117 west lincoln",
                                    apt: "1",
                                    city: "Augusta",
                                    state: "Wisconsin",
                                    zip: "54722",
                                    rooms: "2",
                                    rent: "500",
                                    utilities: "200",
                                    petsAllowed: "Yes")
                                    assert_equal test_property, Property.searchCity("Augusta").first
end

test "should not find a match on city" do
    test_property = Property.create(address: "117 west lincoln",
                                    apt: "1",
                                    city: "Augusta",
                                    state: "Wisconsin",
                                    zip: "54722",
                                    rooms: "2",
                                    rent: "500",
                                    utilities: "200",
                                    petsAllowed: "Yes")
                                    assert_not_equal test_property, Property.searchCity("tajiristan").first
end

test "should find a match on zip" do
    test_property = Property.create(address: "117 west lincoln",
                                    apt: "1",
                                    city: "Augusta",
                                    state: "Wisconsin",
                                    zip: "54722",
                                    rooms: "2",
                                    rent: "500",
                                    utilities: "200",
                                    petsAllowed: "Yes")
                                    assert_equal test_property, Property.searchZip("54722").first
end

test "should not find a match on zip" do
    test_property = Property.create(address: "117 west lincoln",
                                    apt: "1",
                                    city: "Augusta",
                                    state: "Wisconsin",
                                    zip: "54722",
                                    rooms: "2",
                                    rent: "500",
                                    utilities: "200",
                                    petsAllowed: "Yes")
                                    assert_not_equal test_property, Property.searchCity("99999").first
end

test "should find a match on 2 properties" do
    Property.create(address: "117 west lincoln",
                                    apt: "1",
                                    city: "Augusta",
                                    state: "Wisconsin",
                                    zip: "54722",
                                    rooms: "2",
                                    rent: "500",
                                    utilities: "200",
                                    petsAllowed: "Yes")
                                    
    Property.create(address: "120 west lincoln",
                                    apt: "1",
                                    city: "Augusta",
                                    state: "Wisconsin",
                                    zip: "54722",
                                    rooms: "2",
                                    rent: "500",
                                    utilities: "200",
                                    petsAllowed: "Yes")
    assert_equal 2, Property.searchAddress("lincoln").count
end

end
