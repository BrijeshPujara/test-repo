require 'present'

RSpec.describe Present do
  it "fails to wrap when there are contents" do
    present = Present.new()
    present.wrap("Xbox")
    expect { present.wrap("Playstation") }.to raise_error "A contents has already been wrapped."
  end

  it "fails to unwrap when there are no contents" do
    present = Present.new()
    expect{ present.unwrap() }.to raise_error "No contents have been wrapped."
  end

  it "returns contents when there are contents" do
    present = Present.new()
    present.wrap("Xbox")
    expect(present.unwrap()).to eq "Xbox"
  end
end