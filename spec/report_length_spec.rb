require "report_length"

describe "report_length method" do 
  it "returns the 7 characters in string" do
    result = report_length("Brijesh")
    expect(result).to eq "This string was 7 characters long" 
  end

  it "returns 3 as length of string" do
    result = report_length("bob")
    expect(result).to eq "This string was 3 characters long"
  end
end