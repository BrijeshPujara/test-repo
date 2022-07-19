require "Counter"

RSpec.describe Counter do 
  it "adds several numbers together and outputs result" do
    counter = Counter.new()
    counter.add(1)
    counter.add(2)
    counter.add(3)
    expect(counter.report).to eq "Counted to 6 so far."  
  end

  it "adds negative numbers together and outputs result" do 
    counter = Counter.new()
    counter.add(-1)
    counter.add(-2)
    expect(counter.report).to eq "Counted to -3 so far."
  end  

  it "adds more numbers after reporting" do
    counter = Counter.new()
    counter.add(1)
    expect(counter.report).to eq "Counted to 1 so far."
    counter.add(2)
    expect(counter.report).to eq "Counted to 3 so far."
  end     
end