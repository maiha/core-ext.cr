require "../spec_helper"

describe Time::Span do
  describe ".parse" do
    it "works" do
      Time::Span.parse("01:00:00").should eq( Time::Span.new(0, 1, 0, 0, 0) )
      Time::Span.parse("01.02:03:04").should eq( Time::Span.new(1, 2, 3, 4, 0) )
      Time::Span.parse("01.02:03:04.010").should eq( Time::Span.new(1, 2, 3, 4, 10) )
    end
  end
end
