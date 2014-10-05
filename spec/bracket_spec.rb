require "spec_helper"

describe "Bracket" do

  context "given balanced brackets" do
    it "returns true" do
      expect( Bracket.new("[{()}]").valid? ).to eq(true)
    end
    it "returns true" do
      expect( Bracket.new("[(){()}]").valid? ).to eq(true)
    end
  end
  context "given un-balanced brackets" do
    it "returns false" do
      expect( Bracket.new("[({()}]").valid? ).to eq(false)
    end
    it "returns false" do
      expect( Bracket.new(") )[ )}([").valid? ).to eq(false)
    end
    it "returns false" do
      expect( Bracket.new("))(())").valid? ).to eq(false)
    end
    context "given non bracket chars" do
      it "returns false" do
        expect( Bracket.new("( (] ([)]").valid? ).to eq(false)
      end
    end
  end
end
