require "rspec"
require_relative "wife"

describe Wife do
  let(:wife) { Wife.new("Carrie", 25) }

  context "#initialize" do
    it "creates a Wife object" do
      expect(wife).to be_an_instance_of Wife
    end

    it "requires two parameters" do
      expect { Wife.new }.to raise_error(ArgumentError)
    end

    it "initializes happy with false" do
      expect(wife.happy?).to eq false
    end
  end

  context "#name" do
    it "should return the name" do
      expect(wife.name).to eq "Carrie"
    end
  end

  context "#age" do
    it "should return the age of" do
      expect(wife.age).to eq 25
    end
  end

  context "#flowers" do
    it "requires a parameter" do
      expect { wife.flowers }.to raise_error(ArgumentError)
    end

    it "returns true when param is Lilly" do
      wife.flowers("Lilly")
      expect(wife.happy?).to eq true
    end
  end

end