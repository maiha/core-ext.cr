require "./spec_helper"

describe String do
  describe "#first?" do
    it "(Regex)" do
      "a:12\nb:34".first?(/:(\d+)/).should eq("12")
    end
  end
end
