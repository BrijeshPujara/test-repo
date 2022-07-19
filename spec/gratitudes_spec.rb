require 'gratitudes'

RSpec.describe Gratitudes do
  it "adds a string into an array" do
    gratitudes = Gratitudes.new()
    expect(gratitudes.add("test")).to eq ["test"]
  end

  it "adds multiple strings into an array" do 
    gratitudes = Gratitudes.new()
    gratitudes.add("test")
    gratitudes.add("multiple")
    expect(gratitudes.add("strings")).to eq ["test", "multiple", "strings"]
  end  

  it "returns a formatted string from an array of strings" do
    gratitudes = Gratitudes.new()
    gratitudes.add("test")
    gratitudes.add("multiple")
    expect(gratitudes.format).to eq "Be grateful for: test, multiple"
  end 

  it "returns formatted string with an empty array" do
    gratitudes = Gratitudes.new()
    expect(gratitudes.format).to eq "Be grateful for: "
  end

  it "returns integer values from array as well as strings" do 
    gratitudes = Gratitudes.new()
    gratitudes.add(1)
    gratitudes.add("2")
    expect(gratitudes.format).to eq "Be grateful for: 1, 2"
  end 
end