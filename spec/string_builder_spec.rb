require "string_builder"

RSpec.describe StringBuilder do
  it "returns the given string" do
    string = StringBuilder.new()
    string.add("one")
    expect(string.output).to eq "one"
  end

  it "cocatonates several strings and outputs the result" do
    string = StringBuilder.new()
    string.add("this ")
    string.add("is ")
    string.add("a ")
    string.add("string")
    expect(string.output).to eq "this is a string"
  end

  it "returns the length of given string" do
    string = StringBuilder.new()
    string.add("one")
    expect(string.size).to eq 3
  end

  it "returns the length of a concatenated string" do
    string = StringBuilder.new()
    string.add("one")
    string.add("two")
    expect(string.size).to eq 6
  end

  it "raises an error if no string is given" do
    string = StringBuilder.new()
    expect { string.add() }.to raise_error(ArgumentError)
  end

  it "raises an error if an integer is given" do
    string = StringBuilder.new()
    expect { string.add(1) }.to raise_error(TypeError)
  end
end