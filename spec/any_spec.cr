require "./spec_helper"

describe "#any?" do
  describe "String?" do
    it "works" do
      nil.any?.should be_false
      "" .any?.should be_false
      "1".any?.should be_true
      " ".any?.should be_true
    end
  end
end
