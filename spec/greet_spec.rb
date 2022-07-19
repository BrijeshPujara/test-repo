require "greet"

describe "greet method" do 
  it "returns name to 'Hello" do 
    result = greet("Brijesh")
    expect(result).to eq "Hello Brijesh"
  end  
end