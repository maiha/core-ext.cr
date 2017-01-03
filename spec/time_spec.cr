require "./spec_helper"

describe Time do
  describe ".parse" do
    it "works" do
      Time.parse("2001-02-03").should eq(Time.new(2001,2,3))
      Time.parse("2001-02-03 04:05:06").should eq(Time.new(2001,2,3,4,5,6))
      Time.parse("2001-02-03 04:05:06 UTC").utc?.should be_true
      Time.parse("2001-02-03 04:05:06.789 UTC").should eq(Time.new(2001,2,3,4,5,6, 789))
    end
  end
end
