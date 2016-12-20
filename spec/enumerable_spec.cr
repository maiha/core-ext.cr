require "./spec_helper"

describe Enumerable do
  describe "#grep" do
    it "(T)" do
      a = [1, nil, "a"]  # Array(Int32 | String | Nil)
      a.grep(String).should eq(["a"])
    end

    it "(Regex) should not regress" do
      ["Alice", "Bob", "Cipher", "Anna"].grep(/^A/).should eq ["Alice", "Anna"]
    end
  end
end
